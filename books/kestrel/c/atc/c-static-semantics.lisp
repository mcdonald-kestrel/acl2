; C Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "C")

(include-book "c-abstract-syntax")
(include-book "portable-ascii-identifiers")

(include-book "kestrel/fty/sbyte32" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-c-static-semantics
  :parents (atc)
  :short "A static semantics of C for ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "In order to support the generation of proofs for
     the C code generated by ATC,
     we need a static semantics (as well as a dynamic semantics)
     of (the needed portion of) C.
     The static semantics serves to prove that
     the generated C code compiles.
     Here we provide an initial formal static semantics,
     which should support the generation of proofs
     for an initial version of ATC.")
   (xdoc::p
    "This preliminary static semantics may be extended in the future,
     and may be replaced by a more comprehensive model
     that we will be developing as part of the "
    (xdoc::seetopic "language" "language formalization")
    ".")
   (xdoc::p
    "The static semantics is defined over the C abstract syntax,
     but for now it rejects many valid constructs
     just because ATC does not generate those constructs for now.
     This way, we keep the static semantics simpler.
     Being too restrictive is adequate here:
     if a program generated by ATC passes the constraints
     of this excessively strict static semantics,
     it is a valid C program,
     regardless of the fact that many valid C programs (not generated by ATC)
     are rejected by this static semantics.")
   (xdoc::p
    "This static semantics uses the notion of `well-formed'
     to describe abstract syntactic entities
     that satisfy the constraints of the static semantics."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define ident-wfp ((id identp))
  :returns (yes/no booleanp)
  :short "Check if an identifier is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "We check whether the underlying ACL2 string satisfies the conditions
     described in Section `C identifiers' of @(tsee atc).
     As noted there, C18 allows a possibly broader range of valid identifiers,
     but ATC only generates this kind of portable identifiers."))
  (atc-ident-stringp (ident->name id))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define iconst-wfp ((ic iconstp))
  :returns (yes/no booleanp)
  :short "Check if an integer constant is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we require the integer constant
     to be decimal (not octal or hexadecimal),
     to be signed,
     and to have no type suffixes.
     This means that the integer constant must have type @('int'),
     and therefore that its numberic value must in that type's range.
     Given our current definition of @(tsee sintp),
     the value must fit in 32 bits (with the sign bit being 0)."))
  (b* (((iconst ic) ic))
    (and (acl2::sbyte32p ic.value)
         (equal ic.base (iconst-base-dec))
         (not ic.unsignedp)
         (equal ic.type (iconst-tysuffix-none))))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define const-wfp ((c constp))
  :returns (yes/no booleanp)
  :short "Check if a constant is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only accept well-formed integer constants.
     The other kinds of constants are placeholders in our abstract syntax,
     anyhow."))
  (const-case c
              :int (iconst-wfp c.get)
              :float nil
              :enum nil
              :char nil)
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define unop-wfp ((op unopp))
  :returns (yes/no booleanp)
  :short "Check if a unary operator is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "In C they are all well-formed of course,
     but having this predicate lets us limit the supported ones if desired.
     Currently we support all the ones in the abstract syntax."))
  (and (member-eq (unop-kind op) '(:plus :minus :bitnot :lognot)) t)
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define binop-wfp ((op binopp))
  :returns (yes/no booleanp)
  :short "Check if a binary operator is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "In C they are all well-formed of course,
     but having this predicate lets us limit the supported ones if desired.
     Currently we support
     all the non-side-effecting ones in the abstract syntax
     (i.e. not the assignment operators."))
  (and (member-eq (binop-kind op) '(:mul :div :rem
                                    :add :sub
                                    :shl :shr
                                    :lt :gt :le :ge
                                    :eq :ne
                                    :bitand :bitxor :bitior
                                    :logand :logor))
       t)
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define tyspecseq-wfp ((tss tyspecseqp))
  :returns (yes/no booleanp)
  :short "Check if a sequence of type specifiers is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "In C they are all well-formed of course,
     but for now we only allow the one for @('int')."))
  (tyspecseq-case tss :sint)
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define tyname-wfp ((tn tynamep))
  :returns (yes/no booleanp)
  :short "Check if a type name is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "We check that the underlying sequence of type specifiers is well-formed."))
  (tyspecseq-wfp (tyname->specs tn))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod static-env
  :short "Fixtype of static environments."
  :long
  (xdoc::topstring
   (xdoc::p
    "A static environment consists of
     the function definitions in scope
     and the variables in scope.")
   (xdoc::p
    "The function definitions in scope are organized as a list,
     in the same order in which they appear in the translation unit;
     as defined later, we build the list as we traverse the tranlation unit.
     The scope of a function identifier goes from its declaration
     to the end of the translation unit [C:6.2.1/4],
     thus this construction and use of the list of functions in scope
     is consistent with that.")
   (xdoc::p
    "The variables in scope for now are just a finite set of identifiers,
     which is collected starting from function parameters
     (we have no global variables yet)
     and adding local variables
     (which we still have to support in this static semantics).
     Since we only have @('int') values for now,
     all of these variables implicitly have type @('int')."))
  ((functions fundef-list)
   (variables ident-set))
  :pred static-envp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-static-env ()
  :returns (env static-envp)
  :short "An irrelevant static environment, usable as a dummy return value."
  (with-guard-checking :none (ec-call (static-env-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-static-env))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defines expr-wfp
  :short "Check if an expression is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only allow
     (well-formed) identifiers in scope,
     (well-formed) constants,
     unary expressions with well-formed operators and operands,
     and binary expressions with well-formed operators and operands.
     We disallow
     function calls,
     pre/post-increment/decrement,
     casts,
     and ternary (i.e. conditional) expressions.")
   (xdoc::p
    "Normally a static semantics would also return a type for each expression,
     but for now all our expressions have type @('int'),
     so there is no need to return this."))

  (define expr-wfp ((e exprp) (env static-envp))
    :returns (yes/no booleanp)
    (expr-case e
               :ident (and (ident-wfp e.get)
                           (set::in e.get (static-env->variables env)))
               :const (const-wfp e.get)
               :call (b* ((fundef (fundef-list-lookup
                                   e.fun
                                   (static-env->functions env))))
                       (and fundef
                            (= (len (fundef->params fundef))
                               (len e.args))))
               :postinc nil
               :postdec nil
               :preinc nil
               :predec nil
               :unary (and (unop-wfp e.op)
                           (expr-wfp e.arg env))
               :cast nil
               :binary (and (binop-wfp e.op)
                            (expr-wfp e.arg1 env)
                            (expr-wfp e.arg2 env))
               :cond (and (expr-wfp e.test env)
                          (expr-wfp e.then env)
                          (expr-wfp e.else env)))
    :measure (expr-count e))

  (define expr-list-wfp ((es expr-listp) (env static-envp))
    :returns (yes/no booleanp)
    (or (endp es)
        (and (expr-wfp (car es) env)
             (expr-list-wfp (cdr es) env)))
    :measure (expr-list-count es))

  ///

  (fty::deffixequiv-mutual expr-wfp))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defines stmt-wfp-fns
  :short "Check if a statement is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only allow
     @('return') statements with (well-formed) expressions,
     compound statements of allowed statements (no declarations),
     and conditional statements with well-formed tests,
     and allowed statements as branches."))

  (define stmt-wfp ((s stmtp) (env static-envp))
    :returns (yes/no booleanp)
    :parents nil
    (stmt-case s
               :labeled nil
               :compound (block-item-list-wfp s.items env)
               :expr nil
               :null nil
               :if (and (expr-wfp s.test env)
                        (stmt-wfp s.then env))
               :ifelse (and (expr-wfp s.test env)
                            (stmt-wfp s.then env)
                            (stmt-wfp s.else env))
               :switch nil
               :while nil
               :dowhile nil
               :for nil
               :goto nil
               :continue nil
               :break nil
               :return (and s.value
                            (expr-wfp s.value env)))
    :measure (stmt-count s))

  (define block-item-wfp ((item block-itemp) (env static-envp))
    :returns (yes/no booleanp)
    :parents nil
    (block-item-case item
                     :decl nil
                     :stmt (stmt-wfp item.get env))
    :measure (block-item-count item))

  (define block-item-list-wfp ((items block-item-listp) (env static-envp))
    :returns (yes/no booleanp)
    :parents nil
    (or (endp items)
        (and (block-item-wfp (car items) env)
             (block-item-list-wfp (cdr items) env)))
    :measure (block-item-list-count items))

  ///

  (fty::deffixequiv-mutual stmt-wfp-fns))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define param-decl-wfp ((param param-declp) (env static-envp))
  :returns (mv (yes/no booleanp)
               (new-env static-envp))
  :short "Check if a parameter declaration is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "The static environment passed as input is the one
     engendered by the parameter declarations that precede this one.
     We ensure not only that its components are well-formed,
     but also that its name is not already in the environment;
     otherwise, it means that there is a duplicate parameter.
     If all checks succeed, we return the static environment
     updated with the parameter."))
  (b* (((static-env env) env)
       ((param-decl param) param)
       ((unless (tyspecseq-wfp param.type)) (mv nil (irr-static-env)))
       ((unless (ident-wfp param.name)) (mv nil (irr-static-env)))
       ((when (set::in param.name env.variables)) (mv nil (irr-static-env))))
    (mv t
        (change-static-env env
                           :variables (set::insert param.name env.variables))))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define param-decl-list-wfp ((params param-decl-listp) (env static-envp))
  :returns (mv (yes/no booleanp)
               (new-env static-envp))
  :short "Check if a list of parameter declaration is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "We go through each element of the list,
     calling @(tsee param-decl-wfp) and threading the environment through."))
  (b* (((when (endp params)) (mv t (static-env-fix env)))
       ((mv okp env) (param-decl-wfp (car params) env))
       ((when (not okp)) (mv nil env)))
    (param-decl-list-wfp (cdr params) env))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define fundef-wfp ((fundef fundefp) (env static-envp))
  :guard (set::empty (static-env->variables env))
  :returns (mv (yes/no booleanp)
               (new-env static-envp))
  :short "Check if a function definition is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "Starting with an empty variable environment (see guard),
     we process the parameter declarations and obtain the environment
     in which the function body must be statically well-formed.
     If a function with the same name is already in the environment,
     it is an error: there is a duplicate function name.
     Otherwise, we return the initial environment
     updated with the function definition."))
  (b* (((fundef fundef) fundef)
       ((unless (tyspecseq-wfp fundef.result)) (mv nil (irr-static-env)))
       ((unless (ident-wfp fundef.name)) (mv nil (irr-static-env)))
       ((when (member-equal fundef.name
                            (fundef-list->name-list
                             (static-env->functions env))))
        (mv nil (irr-static-env)))
       ((mv okp env) (param-decl-list-wfp fundef.params env))
       ((when (not okp)) (mv nil (irr-static-env)))
       ((unless (stmt-wfp fundef.body env)) (mv nil (irr-static-env))))
    (mv t (make-static-env :functions (append (static-env->functions env)
                                              (list fundef))
                           :variables nil)))
  :hooks (:fix)
  ///

  (defret empty-of-static-env->variables-of-fundef-wfp
    (implies yes/no
             (set::empty (static-env->variables new-env)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define ext-decl-wfp ((ext ext-declp) (env static-envp))
  :guard (set::empty (static-env->variables env))
  :returns (mv (yes/no booleanp)
               (new-env static-envp))
  :short "Check if an external declaration is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only allow well-formed function definitions."))
  (ext-decl-case ext
                 :fundef (fundef-wfp ext.get env)
                 :decl (mv nil (irr-static-env)))
  :hooks (:fix)
  ///

  (defret empty-of-static-env->variables-of-ext-decl-wfp
    (implies yes/no
             (set::empty (static-env->variables new-env)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define ext-decl-list-wfp ((exts ext-decl-listp) (env static-envp))
  :guard (set::empty (static-env->variables env))
  :returns (mv (yes/no booleanp)
               (new-env static-envp))
  :short "Check if a list of external declarations are well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "We thread the environment through."))
  (b* (((when (endp exts)) (mv t (static-env-fix env)))
       ((mv okp env) (ext-decl-wfp (car exts) env))
       ((unless okp) (mv nil (irr-static-env))))
    (ext-decl-list-wfp (cdr exts) env))
  :hooks (:fix)
  ///

  (defret empty-of-static-env->variables-of-ext-decl-list-wfp
    (implies (and yes/no
                  (set::empty (static-env->variables env)))
             (set::empty (static-env->variables new-env)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define transunit-wfp ((tunit transunitp))
  :returns (yes/no booleanp)
  :short "Check if a translation unit is well-formed."
  :long
  (xdoc::topstring
   (xdoc::p
    "Starting from the empty environment,
     we check all the external declarations,
     threading the environment through,
     and discarding the final one (it served its pupose)."))
  (b* (((transunit tunit) tunit)
       (env (make-static-env :functions nil :variables nil))
       ((mv okp &) (ext-decl-list-wfp tunit.decls env)))
    okp)
  :hooks (:fix))
