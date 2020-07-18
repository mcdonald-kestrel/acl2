; FTY Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "FTY")

(include-book "centaur/fty/top" :dir :system)
(include-book "kestrel/utilities/omaps/core" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc defomap

  :parents (fty-extensions fty omap::omaps)

  :short "Generate a <see topic='@(url fty::fty)'>fixtype</see>
          of <see topic='@(url omap::omaps)'>omaps</see>
          whose keys and values have specified fixtypes."

  :long

  (xdoc::topstring

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::h3 "Introduction")

   (xdoc::p
    "This is analogous to
     @(tsee fty::deflist), @(tsee fty::defalist), and @(tsee fty::defset).
     Besides the fixtype itself,
     this macro also generates some theorems about the fixtype.
     Future versions of this macro may generate more theorems, as needed.")

   (xdoc::p
    "Future versions of this macro may be modularized to provide
     a ``sub-macro'' that generates only the recognizer and theorems about it,
     without the fixtype (and without the fixer and equivalence),
     similarly to @(tsee std::deflist) and @(tsee std::defalist).
     That sub-macro could be called @('omap::defomet').")

   (xdoc::p
    "This macro differs from @(tsee fty::defmap),
     which generates an alist.")

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::h3 "General Form")

   (xdoc::codeblock
    "(defomap type"
    "         :key-type ..."
    "         :val-type ..."
    "         :pred ..."
    "         :fix ..."
    "         :equiv ..."
    "         :parents ..."
    "         :short ..."
    "         :long ...")

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::h3 "Inputs")

   (xdoc::desc
    "@('type')"
    (xdoc::p
     "The name of the new fixtype."))

   (xdoc::desc
    "@(':key-type')"
    (xdoc::p
     "The (existing) fixtype of the keys of the new map fixtype."))

   (xdoc::desc
    "@(':val-type')"
    (xdoc::p
     "The (existing) fixtype of the values of the new map fixtype."))

   (xdoc::desc
    (list
     "@(':pred')"
     "@(':fix')"
     "@(':equiv')")
    (xdoc::p
     "The name of the recognizer, fixer, and equivalence for the new fixtype.")
    (xdoc::p
     "The defaults are @('type') followed by
      @('-p'), @('-fix'), and @('-equiv')."))

   (xdoc::desc
    (list
     "@(':parents')"
     "@(':short')"
     "@(':long')")
    (xdoc::p
     "These are used to generate XDOC documentation
      for the topic @('name').")
    (xdoc::p
     "If any of these is not supplied, the corresponding component
      is omitted from the generated XDOC topic."))

   (xdoc::p
    "This macro currently does not perform a thorough validation of its inputs.
     Erroneous inputs may result in failures of the generated events.
     Errors should be easy to diagnose,
     also since this macro has a very simple and readable implementation.
     Future versions of this macro
     should perform more thorough input validation.")

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::h3 "Generated Events")

   (xdoc::p
    "The following are generated, inclusive of XDOC documentation:")

   (xdoc::ul

    (xdoc::li
     "The recognizer, the fixer, the equivalence, and the fixtype.")

    (xdoc::li
     "Several theorems about the recognizer, fixer, equivalence,
      and omap operations applied to this type of omaps."))

   (xdoc::p
    "See the implementation, which uses a readable backquote notation,
     for details.")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc defomap-implementation
  :parents (defomap)
  :short "Implementation of @(tsee defomap).")

(define defomap-fn
  (type key-type val-type pred fix equiv parents short long state)
  :returns (event "A @(tsee acl2::maybe-pseudo-event-formp).")
  :mode :program
  :parents (defomap-implementation)
  :short "Event generated by @(tsee defomap)."
  (b* (;; validate the TYPE input:
       ((unless (symbolp type))
        (raise "The TYPE input must be a symbol, ~
                but it is ~x0 instead." type))
       ;; retrieve the table of all fixtypes:
       (fty-table (get-fixtypes-alist (w state)))
       ;; validate the :KEY-TYPE input:
       ((unless (symbolp key-type))
        (raise "The :KEY-TYPE input must be a symbol, ~
                but it is ~x0 instead." key-type))
       (key-info (find-fixtype key-type fty-table))
       ((unless key-info)
        (raise "The :KEY-TYPE input ~x0 must name a fixtype, ~
                but it does not." key-type))
       (key-pred (fixtype->pred key-info))
       ;; validate the :VAL-TYPE input:
       ((unless (symbolp val-type))
        (raise "The :VAL-TYPE input must be a symbol, ~
                but it is ~x0 instead." val-type))
       (val-info (find-fixtype val-type fty-table))
       ((unless val-info)
        (raise "The :VAL-TYPE input ~x0 must name a fixtype, ~
                but it does not." val-type))
       (val-pred (fixtype->pred val-info))
       ;; validate the :PRED input:
       ((unless (symbolp pred))
        (raise "The :PRED input must be a symbol, ~
                but it is ~x0 instead." pred))
       ;; validate the :FIX input:
       ((unless (symbolp fix))
        (raise "The :FIX input must be a symbol, ~
                but it is ~x0 instead." fix))
       ;; validate the :EQUIV input:
       ((unless (symbolp equiv))
        (raise "The :EQUIV input must be a symbol, ~
                but it is ~x0 instead." equiv))
       ;; package for the generated theorem and variable names:
       (pkg (symbol-package-name type))
       (pkg (if (equal pkg *main-lisp-package-name*) "ACL2" pkg))
       (pkg-witness (pkg-witness pkg))
       ;; variables to use in the generated functions and theorems:
       (x (intern-in-package-of-symbol "X" pkg-witness))
       (y (intern-in-package-of-symbol "Y" pkg-witness))
       (k (intern-in-package-of-symbol "K" pkg-witness))
       (v (intern-in-package-of-symbol "V" pkg-witness))
       ;; names of the generated functions:
       (pred (or pred (acl2::add-suffix-to-fn type "-P")))
       (fix (or fix (acl2::add-suffix-to-fn type "-FIX")))
       (equiv (or equiv (acl2::add-suffix-to-fn type "-EQUIV")))
       ;; names of the generated theorems:
       (booleanp-of-pred (acl2::packn-pos (list 'booleanp-of pred) pkg-witness))
       (pred-of-fix (acl2::packn-pos (list pred '-of- fix) pkg-witness))
       (fix-when-pred (acl2::packn-pos (list fix '-when- pred) pkg-witness))
       (mapp-when-pred (acl2::packn-pos (list 'mapp-when- pred) pkg-witness))
       (pred-of-tail (acl2::packn-pos (list pred '-of-tail) pkg-witness))
       (key-pred-of-head-key-when-pred (acl2::packn-pos
                                        (list key-pred
                                              '-of-head-key-when-
                                              pred)
                                        pkg-witness))
       (val-pred-of-head-val-when-pred (acl2::packn-pos
                                        (list val-pred
                                              '-of-head-val-when-
                                              pred)
                                        pkg-witness))
       (pred-of-update (acl2::packn-pos (list pred '-of-update) pkg-witness))
       (pred-of-update* (acl2::packn-pos (list pred '-of-update*) pkg-witness))
       (pred-of-delete (acl2::packn-pos (list pred '-of-delete) pkg-witness))
       (key-pred-when-in-pred (acl2::packn-pos (list key-pred
                                                     '-when-in-
                                                     pred
                                                     '-binds-free-
                                                     x)
                                               pkg-witness))
       (key-pred-of-car-of-in-pred (acl2::packn-pos
                                    (list key-pred '-of-car-of-in- pred)
                                    pkg-witness))
       (val-pred-of-cdr-of-in-pred (acl2::packn-pos
                                    (list val-pred '-of-cdr-of-in- pred)
                                    pkg-witness))
       (empty-of-fix (acl2::packn-pos (list 'empty-of- fix) pkg-witness))
       ;; reference to the fixtype for the generated XDOC documentation:
       (type-ref (concatenate 'string
                              "@(tsee "
                              (acl2::string-downcase (symbol-package-name type))
                              "::"
                              (acl2::string-downcase (symbol-name type))
                              ")"))
       ;; generated events:
       (pred-event
        `(define ,pred (,x)
           :parents (,type)
           :short ,(concatenate 'string "Recognizer for " type-ref ".")
           (if (atom ,x)
               (null ,x)
             (and (consp (car ,x))
                  (,key-pred (caar ,x))
                  (,val-pred (cdar ,x))
                  (or (null (cdr ,x))
                      (and (consp (cdr ,x))
                           (consp (cadr ,x))
                           (acl2::fast-<< (caar ,x) (caadr ,x))
                           (,pred (cdr ,x))))))
           :no-function t
           ///
           (defrule ,booleanp-of-pred
             (booleanp (,pred ,x)))
           (defrule ,mapp-when-pred
             (implies (,pred ,x)
                      (omap::mapp ,x))
             :rule-classes (:rewrite :forward-chaining)
             :enable omap::mapp)
           (defrule ,pred-of-tail
             (implies (,pred ,x)
                      (,pred (omap::tail ,x)))
             :enable omap::tail)
           (defrule ,key-pred-of-head-key-when-pred
             (implies (and (,pred ,x)
                           (not (omap::empty ,x)))
                      (,key-pred (mv-nth 0 (omap::head ,x))))
             :enable omap::head)
           (defrule ,val-pred-of-head-val-when-pred
             (implies (and (,pred ,x)
                           (not (omap::empty ,x)))
                      (,val-pred (mv-nth 1 (omap::head ,x))))
             :enable omap::head)
           (defrule ,pred-of-update
             (implies (and (,pred ,x)
                           (,key-pred ,k)
                           (,val-pred ,v))
                      (,pred (omap::update ,k ,v ,x)))
             :enable (omap::update omap::head omap::tail))
           (defrule ,pred-of-update*
             (implies (and (,pred ,x)
                           (,pred ,y))
                      (,pred (omap::update* ,x ,y)))
             :enable omap::update*)
           (defrule ,pred-of-delete
             (implies (,pred ,x)
                      (,pred (omap::delete ,k ,x)))
             :enable omap::delete)
           (defrule ,key-pred-when-in-pred
             (implies (and (omap::in ,k ,x) ; binds free X
                           (,pred ,x))
                      (,key-pred ,k))
             :enable omap::in)
           (defrule ,key-pred-of-car-of-in-pred
             (implies (and (,pred ,x)
                           (omap::in ,k ,x))
                      (,key-pred (car (omap::in ,k ,x))))
             :enable omap::in)
           (defrule ,val-pred-of-cdr-of-in-pred
             (implies (and (,pred ,x)
                           (omap::in ,k ,x))
                      (,val-pred (cdr (omap::in ,k ,x))))
             :enable omap::in)))
       (fix-event
        `(define ,fix ((,x ,pred))
           :parents (,type)
           :short ,(concatenate 'string "Fixer for " type-ref ".")
           (mbe :logic (if (,pred ,x) ,x nil)
                :exec ,x)
           :no-function t
           ///
           (defrule ,pred-of-fix
             (,pred (,fix ,x)))
           (defrule ,fix-when-pred
             (implies (,pred ,x)
                      (equal (,fix ,x) ,x)))
           (defrule ,empty-of-fix
             (equal (omap::empty (,fix ,x))
                    (or (not (,pred ,x))
                        (omap::empty ,x)))
             :enable omap::empty)))
       (type-event
        `(defsection ,type
           ,@(and parents (list :parents parents))
           ,@(and short (list :short short))
           ,@(and long (list :long long))
           (fty::deffixtype ,type
             :pred ,pred
             :fix ,fix
             :equiv ,equiv
             :define t
             :forward t))))
    ;; top-level event:
    `(encapsulate
       ()
       (logic)
       ,pred-event
       ,fix-event
       ,type-event)))

(defsection defomap-macro-definition
  :parents (defomap-implementation)
  :short "Definition of the @(tsee defomap) macro."
  :long (xdoc::topstring-@def "defomap")
  (defmacro defomap (type &key
                          key-type val-type
                          pred fix equiv
                          parents short long)
    `(make-event (defomap-fn
                   ',type
                   ',key-type
                   ',val-type
                   ',pred
                   ',fix
                   ',equiv
                   ',parents
                   ,short
                   ,long
                   state))))
