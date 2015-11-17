;; AUTHOR:
;; Shilpi Goel <shigoel@cs.utexas.edu>

(in-package "X86ISA")
(include-book "gather-paging-structures" :ttags :all)
(include-book "x86-ia32e-paging-alt" :ttags :all)

(local (include-book "centaur/bitops/ihs-extensions" :dir :system))
(local (include-book "centaur/bitops/signed-byte-p" :dir :system))

(local (include-book "centaur/gl/gl" :dir :system))

;; ======================================================================

(define superior-entry-points-to-an-inferior-one-p
  ((superior-entry-addr :type (unsigned-byte #.*physical-address-size*))
   (x86))
  :guard (physical-address-p (+ 7 superior-entry-addr))
  :enabled t
  (let* ((superior-entry (rm-low-64 superior-entry-addr x86)))
    (and
     ;; Superior entry present.
     (equal (ia32e-page-tables-slice :p  superior-entry) 1)
     ;; Page Size = 0, i.e., next level of paging structure is required.
     (equal (ia32e-page-tables-slice :ps superior-entry) 0)
     ;; Next level of paging structure fits in the physical memory.
     (physical-address-p
      (+
       (ash 512 3)
       (ash (ia32e-page-tables-slice :reference-addr superior-entry)
            12))))))

;; ======================================================================

;; Some general lemmas about the gather functions:

(defthm non-nil-gather-pml4-table-qword-addresses
  (implies (and (equal pml4-table-base-addr
                       (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr)))
           (gather-pml4-table-qword-addresses x86))
  :hints (("Goal"
           :in-theory (e/d* (pml4-table-base-addr
                             pml4-table-entry-addr
                             gather-pml4-table-qword-addresses)
                            ()))))

(defthm consp-gather-pml4-table-qword-addresses
  (implies (and (equal pml4-table-base-addr
                       (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr)))
           (consp (gather-pml4-table-qword-addresses x86)))
  :hints (("Goal"
           :in-theory (e/d* (pml4-table-base-addr
                             pml4-table-entry-addr
                             gather-pml4-table-qword-addresses)
                            ())))
  :rule-classes (:type-prescription :rewrite))

(defthm car-gather-pml4-table-qword-addresses
  (implies (and (equal pml4-table-base-addr
                       (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr)))
           (equal (car (gather-pml4-table-qword-addresses x86))
                  pml4-table-base-addr))
  :hints (("Goal"
           :expand (create-qword-address-list
                    512
                    (ash (loghead 40 (logtail 12 (xr :ctr *cr3* x86)))
                         12))
           :in-theory (e/d* (pml4-table-base-addr
                             pml4-table-entry-addr
                             gather-pml4-table-qword-addresses)
                            ()))))

(defthm non-nil-gather-qword-addresses-corresponding-to-1-entry
  (implies (and (equal (ia32e-page-tables-slice :p (rm-low-64 paddr x86)) 1)
                (equal (ia32e-page-tables-slice :ps (rm-low-64 paddr x86)) 0)
                (physical-address-p
                 (+ (ash 512 3)
                    (ash (ia32e-page-tables-slice :reference-addr (rm-low-64 paddr x86))
                         12))))
           (gather-qword-addresses-corresponding-to-1-entry paddr x86))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry)
                            ()))))

(defthm consp-gather-qword-addresses-corresponding-to-1-entry
  (implies (and (equal (ia32e-page-tables-slice :p (rm-low-64 paddr x86)) 1)
                (equal (ia32e-page-tables-slice :ps (rm-low-64 paddr x86)) 0)
                (physical-address-p
                 (+ (ash 512 3)
                    (ash (ia32e-page-tables-slice :reference-addr (rm-low-64 paddr x86))
                         12))))
           (consp (gather-qword-addresses-corresponding-to-1-entry paddr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry)
                            ())))
  :rule-classes (:type-prescription :rewrite))

(defthm car-gather-qword-addresses-corresponding-to-1-entry
  (implies (and (equal (ia32e-page-tables-slice :p (rm-low-64 paddr x86)) 1)
                (equal (ia32e-page-tables-slice :ps (rm-low-64 paddr x86)) 0)
                (physical-address-p
                 (+ (ash 512 3)
                    (ash (ia32e-page-tables-slice :reference-addr (rm-low-64 paddr x86))
                         12))))
           (equal (car (gather-qword-addresses-corresponding-to-1-entry paddr x86))
                  (ash (ia32e-page-tables-slice :reference-addr (rm-low-64 paddr x86))
                       12)))
  :hints (("Goal"
           :expand (create-qword-address-list
                    512
                    (ash (loghead 40 (logtail 12 (rm-low-64 paddr x86)))
                         12))
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry)
                            ()))))

(defthm consp-gather-qword-addresses-corresponding-to-entries
  (implies (and (consp paddr-list)
                (qword-paddr-listp paddr-list)
                (equal (ia32e-page-tables-slice :p (rm-low-64 (car paddr-list) x86)) 1)
                (equal (ia32e-page-tables-slice :ps (rm-low-64 (car paddr-list) x86)) 0)
                (physical-address-p
                 (+ (ash 512 3)
                    (ash (ia32e-page-tables-slice :reference-addr (rm-low-64 (car paddr-list) x86))
                         12))))
           (consp
            (gather-qword-addresses-corresponding-to-entries
             paddr-list
             x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-entries)
                            ())))
  :rule-classes (:type-prescription :rewrite))

(defthm car-gather-qword-addresses-corresponding-to-entries
  (implies (and (consp paddr-list)
                (qword-paddr-listp paddr-list)
                (equal (ia32e-page-tables-slice :p (rm-low-64 (car paddr-list) x86)) 1)
                (equal (ia32e-page-tables-slice :ps (rm-low-64 (car paddr-list) x86)) 0)
                (physical-address-p
                 (+ (ash 512 3)
                    (ash (ia32e-page-tables-slice :reference-addr (rm-low-64 (car paddr-list) x86))
                         12))))
           (equal
            (car (gather-qword-addresses-corresponding-to-entries paddr-list x86))
            (gather-qword-addresses-corresponding-to-1-entry (car paddr-list) x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-entries)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-1-entry-and-to-entries
  (implies (and (physical-address-p
                 (+ (ash 512 3)
                    (ash (ia32e-page-tables-slice :reference-addr (rm-low-64 paddr x86))
                         12)))
                (qword-paddr-listp paddrs)
                (equal (ia32e-page-tables-slice :p (rm-low-64 paddr x86)) 1)
                (equal (ia32e-page-tables-slice :ps (rm-low-64 paddr x86)) 0)
                (member-p paddr paddrs))
           (subset-list-p
            (gather-qword-addresses-corresponding-to-1-entry paddr x86)
            (gather-qword-addresses-corresponding-to-entries paddrs x86)))

  :hints (("Goal" :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry
                                    gather-qword-addresses-corresponding-to-entries
                                    subset-p)
                                   ()))))

(defthm gather-qword-addresses-corresponding-to-entries-and-to-list-of-entries
  (implies (and (physical-address-p
                 (+ (ash 512 3)
                    (ash (ia32e-page-tables-slice :reference-addr (rm-low-64 paddr x86))
                         12)))
                (qword-paddr-list-listp paddrs-list)
                (equal (ia32e-page-tables-slice :p (rm-low-64 paddr x86)) 1)
                (equal (ia32e-page-tables-slice :ps (rm-low-64 paddr x86)) 0)
                (member-list-p paddr paddrs-list))
           (subset-list-p
            (gather-qword-addresses-corresponding-to-1-entry paddr x86)
            (gather-qword-addresses-corresponding-to-list-of-entries
             paddrs-list x86)))

  :hints (("Goal" :in-theory (e/d* (gather-qword-addresses-corresponding-to-entries
                                    gather-qword-addresses-corresponding-to-list-of-entries
                                    subset-p)
                                   ()))))

;; ======================================================================

;; PML4 Table Base and Entry Addresses are present in the output from
;; gather-all-paging-structure-qword-addresses.

(defthm pml4-table-base-addr-is-a-member-of-gather-pml4-table-qword-addresses
  (implies (physical-address-p (+ (ash 512 3)
                                  (mv-nth 1 (pml4-table-base-addr x86))))
           (member-p (mv-nth 1 (pml4-table-base-addr x86))
                     (gather-pml4-table-qword-addresses x86)))
  :hints (("Goal"
           :in-theory (e/d* (pml4-table-base-addr
                             gather-pml4-table-qword-addresses)
                            ()))))

(local
 (def-gl-thm pml4-table-entry-addr-and-gather-pml4-table-qword-addresses-helper-1
   :hyp (and (unsigned-byte-p 52 x)
             (equal (loghead 12 x) 0))
   :concl (equal (logand 18446744073709547527 x)
                 x)
   :g-bindings `((x (:g-number ,(gl-int 0 1 53))))))

(local
 (def-gl-thm pml4-table-entry-addr-and-gather-pml4-table-qword-addresses-helper-2
   :hyp (and (canonical-address-p lin-addr)
             (unsigned-byte-p 52 x))
   :concl (< (logior (ash (loghead 9 (logtail 39 lin-addr))
                          3)
                     x)
             (+ 4096 x))
   :g-bindings `((lin-addr (:g-number ,(gl-int 0 2 65)))
                 (x        (:g-number ,(gl-int 1 2 65))))))

(defthm pml4-table-entry-addr-is-a-member-of-gather-pml4-table-qword-addresses
  (implies (and (canonical-address-p lin-addr)
                (equal pml4-table-base-addr
                       (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr)))
           (member-p (pml4-table-entry-addr lin-addr pml4-table-base-addr)
                     (gather-pml4-table-qword-addresses x86)))
  :hints (("Goal"
           :in-theory (e/d* (pml4-table-base-addr
                             pml4-table-entry-addr
                             gather-pml4-table-qword-addresses)
                            ()))))

(defthm pml4-table-base-addr-is-in-gather-all-paging-structure-qword-addresses
  (implies (physical-address-p
            (+ (ash 512 3)
               (mv-nth 1 (pml4-table-base-addr x86))))
           (member-list-p (mv-nth 1 (pml4-table-base-addr x86))
                          (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            ()))))

(defthm pml4-table-entry-addr-is-in-gather-all-paging-structure-qword-addresses
  (implies (and (canonical-address-p lin-addr)
                (equal pml4-table-base-addr
                       (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr)))
           (member-list-p (pml4-table-entry-addr lin-addr pml4-table-base-addr)
                          (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            ()))))

;; ======================================================================

;; Page Directory Pointer Table Base and Entry Addresses are present
;; in the output from gather-all-paging-structure-qword-addresses.

(local
 (def-gl-thm page-dir-ptr-table-entry-addr-is-in-a-table-pointed-to-by-a-pml4e-helper-1-1
   :hyp (and (unsigned-byte-p 64 x)
             (canonical-address-p l))
   :concl (<=
           (ash (loghead 40 (logtail 12 x)) 12)
           (logior (ash (loghead 9 (logtail 30 l)) 3)
                   (logand 18446744073709547527
                           (ash (loghead 40 (logtail 12 x)) 12))))
   :g-bindings `((x (:g-number ,(gl-int 0 2 65)))
                 (l (:g-number ,(gl-int 1 2 65))))
   :rule-classes :linear))

(local
 (def-gl-thm page-dir-ptr-table-entry-addr-is-in-a-table-pointed-to-by-a-pml4e-helper-2-1
   :hyp (and (unsigned-byte-p 64 x)
             (canonical-address-p l))
   :concl (<
           (logior (ash (loghead 9 (logtail 30 l)) 3)
                   (ash (loghead 40 (logtail 12 x)) 12))
           (+ 4096 (ash (loghead 40 (logtail 12 x)) 12)))
   :g-bindings `((x (:g-number ,(gl-int 0 2 65)))
                 (l (:g-number ,(gl-int 1 2 65))))
   :rule-classes :linear))

(defthm page-dir-ptr-table-base-addr-is-in-a-table-pointed-to-by-a-pml4e
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (equal pml4-table-entry-addr (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p
                 pml4-table-entry-addr x86))
           (member-p
            (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86))
            (gather-qword-addresses-corresponding-to-1-entry
             pml4-table-entry-addr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry
                             page-dir-ptr-table-entry-addr
                             page-dir-ptr-table-base-addr)
                            ()))))

(defthm page-dir-ptr-table-entry-addr-is-in-a-table-pointed-to-by-a-pml4e
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (equal pml4-table-entry-addr (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-p
            (page-dir-ptr-table-entry-addr
             lin-addr
             (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
            (gather-qword-addresses-corresponding-to-1-entry
             pml4-table-entry-addr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry
                             page-dir-ptr-table-entry-addr
                             page-dir-ptr-table-base-addr)
                            ()))))

(defthm pdpt-qword-paddrs-referred-to-by-pml4-base-addr-are-a-subset-of-those-by-all-pml4es
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-base-addr x86))
           (subset-list-p
            (gather-qword-addresses-corresponding-to-1-entry pml4-table-base-addr x86)
            (gather-qword-addresses-corresponding-to-entries
             (gather-pml4-table-qword-addresses x86)
             x86))))

(defthm pdpt-qword-paddrs-referred-to-by-a-pml4e-addr-are-a-subset-of-those-by-all-pml4es
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (equal pml4-table-entry-addr (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (canonical-address-p lin-addr))
           (subset-list-p
            (gather-qword-addresses-corresponding-to-1-entry pml4-table-entry-addr x86)
            (gather-qword-addresses-corresponding-to-entries
             (gather-pml4-table-qword-addresses x86) x86)))
  :hints (("Goal" :in-theory (e/d* () (subset-list-p)))))

(defthm page-dir-ptr-table-base-addr-is-in-gather-all-paging-structure-qword-addresses
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (equal pml4-table-entry-addr (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (canonical-address-p lin-addr))
           (member-list-p (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86))
                          (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :use ((:instance subset-list-p-and-member-list-p
                            (e (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
                            (xs (gather-qword-addresses-corresponding-to-1-entry
                                 (pml4-table-entry-addr lin-addr pml4-table-base-addr)
                                 x86))
                            (xss (gather-qword-addresses-corresponding-to-entries
                                  (gather-pml4-table-qword-addresses x86)
                                  x86))))
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            (subset-list-p-and-member-list-p)))))

(defthm page-dir-ptr-table-entry-addr-is-in-gather-all-paging-structure-qword-addresses
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (equal pml4-table-entry-addr (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-list-p
            (page-dir-ptr-table-entry-addr lin-addr (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
            (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :use ((:instance subset-list-p-and-member-list-p
                            (e (page-dir-ptr-table-entry-addr
                                lin-addr
                                (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86))))
                            (xs (gather-qword-addresses-corresponding-to-1-entry
                                 (pml4-table-entry-addr lin-addr pml4-table-base-addr)
                                 x86))
                            (xss (gather-qword-addresses-corresponding-to-entries
                                  (gather-pml4-table-qword-addresses x86)
                                  x86))))
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            (subset-list-p-and-member-list-p)))))

;; ======================================================================

;; Page Directory Base and Entry Addresses are present in the output
;; from gather-all-paging-structure-qword-addresses.

(defthm page-directory-base-addr-is-in-a-table-pointed-to-by-a-pdpte
  (implies (and (equal page-dir-ptr-table-base-addr
                       (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
                (equal page-dir-ptr-table-entry-addr
                       (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86))
           (member-p
            (mv-nth 1 (page-directory-base-addr lin-addr x86))
            (gather-qword-addresses-corresponding-to-1-entry
             page-dir-ptr-table-entry-addr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry
                             page-directory-entry-addr
                             page-directory-base-addr)
                            ()))))

(local
 (def-gl-thm page-directory-entry-addr-is-in-a-table-pointed-to-by-a-pdpte-helper-1
   :hyp (and (unsigned-byte-p 64 x)
             (canonical-address-p l))
   :concl (<
           (logior (ash (loghead 9 (logtail 21 l)) 3)
                   (ash (loghead 40 (logtail 12 x)) 12))
           (+ 4096 (ash (loghead 40 (logtail 12 x)) 12)))
   :g-bindings `((x (:g-number ,(gl-int 0 2 65)))
                 (l (:g-number ,(gl-int 1 2 65))))
   :rule-classes :linear))

(defthm page-directory-entry-addr-is-in-a-table-pointed-to-by-a-pdpte
  (implies (and (equal page-dir-ptr-table-base-addr
                       (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
                (equal page-dir-ptr-table-entry-addr
                       (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-p
            (page-directory-entry-addr
             lin-addr (mv-nth 1 (page-directory-base-addr lin-addr x86)))
            (gather-qword-addresses-corresponding-to-1-entry page-dir-ptr-table-entry-addr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry
                             page-directory-entry-addr
                             page-directory-base-addr)
                            ()))))

(defthm page-dir-ptr-table-entry-addr-is-in-a-table-pointed-to-by-a-pml4e-alt
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (equal pml4-table-entry-addr (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-list-p
            (page-dir-ptr-table-entry-addr
             lin-addr
             (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
            (gather-qword-addresses-corresponding-to-entries
             (gather-pml4-table-qword-addresses x86)
             x86)))
  :hints (("Goal"
           :use ((:instance subset-list-p-and-member-list-p
                            (e (page-dir-ptr-table-entry-addr
                                lin-addr
                                (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86))))
                            (xs (gather-qword-addresses-corresponding-to-1-entry
                                 (pml4-table-entry-addr lin-addr pml4-table-base-addr)
                                 x86))
                            (xss (gather-qword-addresses-corresponding-to-entries
                                  (gather-pml4-table-qword-addresses x86)
                                  x86))))
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-entries)
                            (subset-list-p-and-member-list-p)))))

(defthm page-directory-base-addr-is-in-gather-all-paging-structure-qword-addresses
  (implies (and (equal pml4-table-base-addr
                       (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (equal pml4-table-entry-addr (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (equal page-dir-ptr-table-base-addr
                       (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
                (equal page-dir-ptr-table-entry-addr
                       (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-list-p (mv-nth 1 (page-directory-base-addr lin-addr x86))
                          (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :use ((:instance subset-list-p-and-member-list-p
                            (e (mv-nth 1 (page-directory-base-addr lin-addr x86)))
                            (xs (gather-qword-addresses-corresponding-to-1-entry
                                 (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr)
                                 x86))
                            (xss (gather-all-paging-structure-qword-addresses x86))))
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            (subset-list-p-and-member-list-p)))))

(defthm page-directory-entry-addr-is-in-gather-all-paging-structure-qword-addresses
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (equal pml4-table-entry-addr
                       (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (equal page-dir-ptr-table-base-addr
                       (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
                (equal page-dir-ptr-table-entry-addr
                       (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-list-p
            (page-directory-entry-addr
             lin-addr
             (mv-nth 1 (page-directory-base-addr lin-addr x86)))
            (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :use ((:instance subset-list-p-and-member-list-p
                            (e (page-directory-entry-addr
                                lin-addr
                                (mv-nth 1 (page-directory-base-addr lin-addr x86))))
                            (xs (gather-qword-addresses-corresponding-to-1-entry
                                 (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr)
                                 x86))
                            (xss (gather-all-paging-structure-qword-addresses x86))))
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            (subset-list-p-and-member-list-p)))))

;; ======================================================================

;; Page Table Base and Entry Addresses are present in the output from
;; gather-all-paging-structure-qword-addresses.

(defthm page-table-base-addr-is-in-a-table-pointed-to-by-a-pde
  (implies (and
            (equal page-dir-ptr-table-base-addr
                   (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
            (equal
             page-dir-ptr-table-entry-addr
             (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
            (equal page-directory-base-addr
                   (mv-nth 1 (page-directory-base-addr lin-addr x86)))
            (equal page-directory-entry-addr
                   (page-directory-entry-addr lin-addr page-directory-base-addr))
            ;; Why don't I need the following hyp?
            ;; (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
            (equal
             (ia32e-page-tables-slice
              :ps
              (rm-low-64 page-dir-ptr-table-entry-addr x86))
             0)
            (superior-entry-points-to-an-inferior-one-p page-directory-entry-addr x86))
           (member-p
            (mv-nth 1 (page-table-base-addr lin-addr x86))
            (gather-qword-addresses-corresponding-to-1-entry
             page-directory-entry-addr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry
                             page-directory-entry-addr
                             page-directory-base-addr
                             page-table-entry-addr
                             page-table-base-addr)
                            ()))))

(local
 (def-gl-thm page-table-entry-addr-is-in-a-table-pointed-to-by-a-pde-helper-1
   :hyp (and (unsigned-byte-p 64 x)
             (canonical-address-p l))
   :concl (<
           (logior (ash (loghead 9 (logtail 12 l)) 3)
                   (ash (loghead 40 (logtail 12 x)) 12))
           (+ 4096 (ash (loghead 40 (logtail 12 x)) 12)))
   :g-bindings `((x (:g-number ,(gl-int 0 2 65)))
                 (l (:g-number ,(gl-int 1 2 65))))
   :rule-classes :linear))

(defthm page-table-entry-addr-is-in-a-table-pointed-to-by-a-pde
  (implies (and (equal page-dir-ptr-table-base-addr
                       (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
                (equal page-dir-ptr-table-entry-addr
                       (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
                ;; Why don't I need the following hyp?
                ;; (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
                (equal (ia32e-page-tables-slice
                        :ps (rm-low-64 page-dir-ptr-table-entry-addr x86)) 0)
                (equal page-directory-base-addr
                       (mv-nth 1 (page-directory-base-addr lin-addr x86)))
                (equal page-directory-entry-addr
                       (page-directory-entry-addr lin-addr page-directory-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-directory-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-p
            (page-table-entry-addr
             lin-addr (mv-nth 1 (page-table-base-addr lin-addr x86)))
            (gather-qword-addresses-corresponding-to-1-entry
             (page-directory-entry-addr lin-addr page-directory-base-addr)
             x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry
                             page-directory-entry-addr
                             page-directory-base-addr
                             page-table-entry-addr
                             page-table-base-addr)
                            ()))))

(defthm page-directory-entry-addr-is-in-a-table-pointed-to-by-a-pdpte-alt
  (implies
   (and
    (equal pml4-table-base-addr
           (mv-nth 1 (pml4-table-base-addr x86)))
    (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
    (equal pml4-table-entry-addr
           (pml4-table-entry-addr lin-addr pml4-table-base-addr))
    (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
    (equal page-dir-ptr-table-base-addr
           (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
    (equal page-dir-ptr-table-entry-addr
           (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
    (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
    (equal page-directory-base-addr
           (mv-nth 1 (page-directory-base-addr lin-addr x86)))
    (equal page-directory-entry-addr
           (page-directory-entry-addr lin-addr page-directory-base-addr))
    (canonical-address-p lin-addr)
    (x86p x86))
   (member-list-p
    page-directory-entry-addr
    (gather-qword-addresses-corresponding-to-list-of-entries
     (gather-qword-addresses-corresponding-to-entries
      (gather-pml4-table-qword-addresses x86)
      x86)
     x86)))
  :hints (("Goal"
           :use ((:instance subset-list-p-and-member-list-p
                            (e (page-directory-entry-addr lin-addr page-directory-base-addr))
                            (xs (gather-qword-addresses-corresponding-to-1-entry
                                 (page-dir-ptr-table-entry-addr
                                  lin-addr page-dir-ptr-table-base-addr)
                                 x86))
                            (xss (gather-qword-addresses-corresponding-to-list-of-entries
                                  (gather-qword-addresses-corresponding-to-entries
                                   (gather-pml4-table-qword-addresses x86)
                                   x86)
                                  x86))))
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-entries
                             gather-qword-addresses-corresponding-to-list-of-entries)
                            (subset-list-p-and-member-list-p)))))

(defthm page-table-addresses-pointed-to-by-a-pde-are-in-those-pointed-to-by-all-pdes
  (implies
   (and (equal pml4-table-base-addr
               (mv-nth 1 (pml4-table-base-addr x86)))
        (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
        (equal pml4-table-entry-addr
               (pml4-table-entry-addr lin-addr pml4-table-base-addr))
        (superior-entry-points-to-an-inferior-one-p
         pml4-table-entry-addr x86)
        (equal page-dir-ptr-table-base-addr
               (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
        (equal page-dir-ptr-table-entry-addr
               (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
        (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
        (equal page-directory-base-addr
               (mv-nth 1 (page-directory-base-addr lin-addr x86)))
        (equal page-directory-entry-addr
               (page-directory-entry-addr lin-addr page-directory-base-addr))
        (superior-entry-points-to-an-inferior-one-p page-directory-entry-addr x86)
        (canonical-address-p lin-addr)
        (x86p x86))
   (subset-list-p
    ;; PT qword addresses corresponding to a PDE.
    (gather-qword-addresses-corresponding-to-1-entry
     (page-directory-entry-addr lin-addr page-directory-base-addr)
     x86)
    ;; All PT qword addresses.
    (gather-qword-addresses-corresponding-to-list-of-entries
     ;; All PD qword addresses.
     (gather-qword-addresses-corresponding-to-list-of-entries
      ;; All PDPT qword addresses.
      (gather-qword-addresses-corresponding-to-entries
       ;; ALL PML4 qword addresses.
       (gather-pml4-table-qword-addresses x86)
       x86)
      x86)
     x86)))
  :hints (("Goal"
           :in-theory (e/d* ()
                            (page-directory-entry-addr-is-in-a-table-pointed-to-by-a-pdpte-alt))
           :use ((:instance page-directory-entry-addr-is-in-a-table-pointed-to-by-a-pdpte-alt)))))

(defthm page-table-base-addr-is-in-gather-all-paging-structure-qword-addresses
  (implies (and (equal pml4-table-base-addr (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (equal pml4-table-entry-addr
                       (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (equal page-dir-ptr-table-base-addr
                       (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
                (equal page-dir-ptr-table-entry-addr
                       (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
                (equal page-directory-base-addr
                       (mv-nth 1 (page-directory-base-addr lin-addr x86)))
                (equal page-directory-entry-addr
                       (page-directory-entry-addr lin-addr page-directory-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-directory-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-list-p (mv-nth 1 (page-table-base-addr lin-addr x86))
                          (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :use ((:instance subset-list-p-and-member-list-p
                            (e (mv-nth 1 (page-table-base-addr lin-addr x86)))
                            (xs (gather-qword-addresses-corresponding-to-1-entry
                                 (page-directory-entry-addr lin-addr page-directory-base-addr)
                                 x86))
                            (xss (gather-all-paging-structure-qword-addresses x86))))
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            (subset-list-p-and-member-list-p)))))

(defthm page-table-entry-addr-is-in-gather-all-paging-structure-qword-addresses
  (implies (and (equal pml4-table-base-addr
                       (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr))
                (equal pml4-table-entry-addr
                       (pml4-table-entry-addr lin-addr pml4-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p pml4-table-entry-addr x86)
                (equal page-dir-ptr-table-base-addr
                       (mv-nth 1 (page-dir-ptr-table-base-addr lin-addr x86)))
                (equal page-dir-ptr-table-entry-addr
                       (page-dir-ptr-table-entry-addr lin-addr page-dir-ptr-table-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-dir-ptr-table-entry-addr x86)
                (equal page-directory-base-addr
                       (mv-nth 1 (page-directory-base-addr lin-addr x86)))
                (equal page-directory-entry-addr
                       (page-directory-entry-addr lin-addr page-directory-base-addr))
                (superior-entry-points-to-an-inferior-one-p page-directory-entry-addr x86)
                (canonical-address-p lin-addr)
                (x86p x86))
           (member-list-p
            (page-table-entry-addr
             lin-addr
             (mv-nth 1 (page-table-base-addr lin-addr x86)))
            (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :use ((:instance subset-list-p-and-member-list-p
                            (e (page-table-entry-addr
                                lin-addr
                                (mv-nth 1 (page-table-base-addr lin-addr x86))))
                            (xs (gather-qword-addresses-corresponding-to-1-entry
                                 (page-directory-entry-addr lin-addr page-directory-base-addr)
                                 x86))
                            (xss (gather-all-paging-structure-qword-addresses x86))))
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            (subset-list-p-and-member-list-p)))))

;; ======================================================================

;; RoW Theorems with R = gather functions:

(defthm gather-pml4-table-qword-addresses-xw-fld!=ctr
  (implies (not (equal fld :ctr))
           (equal (gather-pml4-table-qword-addresses (xw fld index val x86))
                  (gather-pml4-table-qword-addresses x86)))
  :hints (("Goal"
           :cases ((equal fld :ctr))
           :in-theory (e/d* (gather-pml4-table-qword-addresses)
                            ()))))

(defthm gather-pml4-table-qword-addresses-xw-fld=ctr
  (implies (and (equal fld :ctr)
                (not (equal index *cr3*)))
           (equal (gather-pml4-table-qword-addresses (xw fld index val x86))
                  (gather-pml4-table-qword-addresses x86)))
  :hints (("Goal"
           :cases ((equal fld :ctr))
           :in-theory (e/d* (gather-pml4-table-qword-addresses)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-1-entry-xw-fld!=mem
  (implies (and (not (equal fld :mem))
                (natp n))
           (equal (gather-qword-addresses-corresponding-to-1-entry
                   n (xw fld index val x86))
                  (gather-qword-addresses-corresponding-to-1-entry n x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-1-entry-xw-fld=mem-disjoint
  (implies (and (disjoint-p (addr-range 1 index)
                            (addr-range 8 addr))
                (natp addr))
           (equal (gather-qword-addresses-corresponding-to-1-entry
                   addr (xw :mem index val x86))
                  (gather-qword-addresses-corresponding-to-1-entry addr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry)
                            (addr-range
                             addr-range-1)))))

(defthm gather-qword-addresses-corresponding-to-1-entry-wm-low-64
  (implies (and (disjoint-p (addr-range 8 index)
                            (addr-range 8 addr))
                (physical-address-p index)
                (physical-address-p addr))
           (equal (gather-qword-addresses-corresponding-to-1-entry
                   addr (wm-low-64 index val x86))
                  (gather-qword-addresses-corresponding-to-1-entry addr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-1-entry-xw-fld=mem-superior-entry-addr
  (implies (and (equal index addr)
                (or
                 (equal val (set-accessed-bit (rm-low-64 addr x86)))
                 (equal val (set-dirty-bit (rm-low-64 addr x86)))
                 (equal val (set-accessed-bit (set-dirty-bit (rm-low-64 addr x86)))))
                (physical-address-p index)
                (physical-address-p (+ 7 index))
                (x86p x86))
           (equal (gather-qword-addresses-corresponding-to-1-entry
                   addr (wm-low-64 index val x86))
                  (gather-qword-addresses-corresponding-to-1-entry addr x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-1-entry
                             member-p)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-entries-xw-fld!=mem
  (implies (and (not (equal fld :mem))
                (qword-paddr-listp addrs))
           (equal (gather-qword-addresses-corresponding-to-entries
                   addrs (xw fld index val x86))
                  (gather-qword-addresses-corresponding-to-entries addrs x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-entries)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-entries-xw-fld=mem-disjoint
  (implies (and (not (member-p index addrs))
                (equal (loghead 3 index) 0)
                (physical-address-p index)
                (mult-8-qword-paddr-listp addrs))
           (equal (gather-qword-addresses-corresponding-to-entries
                   addrs (xw :mem index val x86))
                  (gather-qword-addresses-corresponding-to-entries addrs x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-entries
                             ifix)
                            (addr-range
                             (addr-range))))))

(defthm gather-qword-addresses-corresponding-to-entries-xw-wm-low-64
  (implies (and (not (member-p index addrs))
                (equal (loghead 3 index) 0)
                (physical-address-p index)
                (mult-8-qword-paddr-listp addrs))
           (equal (gather-qword-addresses-corresponding-to-entries
                   addrs (wm-low-64 index val x86))
                  (gather-qword-addresses-corresponding-to-entries addrs x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-entries
                             ifix)
                            ()))))

(local
 (defthm gather-qword-addresses-corresponding-to-entries-xw-fld=mem-superior-entry-addr-helper
   (implies (and (member-p index (cdr addrs))
                 (no-duplicates-p addrs))
            (not (equal index (car addrs))))))

(defthm gather-qword-addresses-corresponding-to-entries-xw-fld=mem-superior-entry-addr
  (implies (and (member-p index addrs)
                (mult-8-qword-paddr-listp addrs)
                (no-duplicates-p addrs)
                (or
                 (equal val (set-accessed-bit (rm-low-64 index x86)))
                 (equal val (set-dirty-bit (rm-low-64 index x86)))
                 (equal val (set-accessed-bit (set-dirty-bit (rm-low-64 index x86)))))
                (physical-address-p index)
                (equal (loghead 3 index) 0)
                (x86p x86))
           (equal (gather-qword-addresses-corresponding-to-entries
                   addrs (wm-low-64 index val x86))
                  (gather-qword-addresses-corresponding-to-entries addrs x86)))
  :hints (("Goal"
           :in-theory (e/d* (member-p gather-qword-addresses-corresponding-to-entries)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-list-of-entries-xw-fld!=mem
  (implies (and (not (equal fld :mem))
                (qword-paddr-list-listp addrs))
           (equal (gather-qword-addresses-corresponding-to-list-of-entries
                   addrs (xw fld index val x86))
                  (gather-qword-addresses-corresponding-to-list-of-entries addrs x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-list-of-entries)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-list-of-entries-xw-fld=mem-disjoint
  (implies (and (pairwise-disjoint-p-aux (list index) addrs)
                (mult-8-qword-paddr-list-listp addrs)
                (physical-address-p index)
                (equal (loghead 3 index) 0))
           (equal (gather-qword-addresses-corresponding-to-list-of-entries
                   addrs (xw :mem index val x86))
                  (gather-qword-addresses-corresponding-to-list-of-entries addrs x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-list-of-entries)
                            ()))))

(defthm gather-qword-addresses-corresponding-to-list-of-entries-xw-wm-low-64
  (implies (and (pairwise-disjoint-p-aux (list index) addrs)
                (mult-8-qword-paddr-list-listp addrs)
                (physical-address-p index)
                (equal (loghead 3 index) 0))
           (equal (gather-qword-addresses-corresponding-to-list-of-entries
                   addrs (wm-low-64 index val x86))
                  (gather-qword-addresses-corresponding-to-list-of-entries addrs x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-list-of-entries)
                            ()))))

(local
 (defthm gather-qword-addresses-corresponding-to-list-of-entries-xw-superior-entry-addr-helper
   (implies (and (member-list-p index addrs-2)
                 (true-listp addrs-1)
                 (true-list-listp addrs-2)
                 (no-duplicates-list-p (append (list addrs-1) addrs-2)))
            (not (member-p index addrs-1)))
   :hints (("Goal" :in-theory (e/d* (member-p
                                     member-list-p
                                     acl2::flatten
                                     no-duplicates-p)
                                    ())))))

(defthm gather-qword-addresses-corresponding-to-list-of-entries-xw-superior-entry-addr
  (implies (and (member-list-p index addrs)
                (mult-8-qword-paddr-list-listp addrs)
                (no-duplicates-list-p addrs)
                (or
                 (equal val (set-accessed-bit (rm-low-64 index x86)))
                 (equal val (set-dirty-bit (rm-low-64 index x86)))
                 (equal val (set-accessed-bit (set-dirty-bit (rm-low-64 index x86)))))
                (physical-address-p index)
                (equal (loghead 3 index) 0)
                (x86p x86))
           (equal (gather-qword-addresses-corresponding-to-list-of-entries
                   addrs (wm-low-64 index val x86))
                  (gather-qword-addresses-corresponding-to-list-of-entries addrs x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-qword-addresses-corresponding-to-list-of-entries)
                            ()))))

(defthm gather-all-paging-structure-qword-addresses-xw-fld!=mem-and-ctr
  (implies (and (not (equal fld :mem))
                (not (equal fld :ctr)))
           (equal (gather-all-paging-structure-qword-addresses
                   (xw fld index val x86))
                  (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            ()))))

(defthm gather-all-paging-structure-qword-addresses-xw-fld=ctr
  (implies (not (equal index *cr3*))
           (equal (gather-all-paging-structure-qword-addresses
                   (xw :ctr index val x86))
                  (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            ()))))

(defthm gather-all-paging-structure-qword-addresses-xw-fld=mem-disjoint
  (implies (and (mult-8-qword-paddr-listp addrs)
                (equal addrs (gather-all-paging-structure-qword-addresses x86)))
           (equal (gather-all-paging-structure-qword-addresses (xw :mem index val x86))
                  addrs))
  :hints (("Goal"
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            ()))))

(defthm gather-all-paging-structure-qword-addresses-xw-wm-low-64
  (implies (and (mult-8-qword-paddr-listp (gather-all-paging-structure-qword-addresses x86))
                ;; Needing the following two hyps is dumb.
                (equal pml4-table-base-addr
                       (mv-nth 1 (pml4-table-base-addr x86)))
                (physical-address-p (+ (ash 512 3) pml4-table-base-addr)))
           (equal (gather-all-paging-structure-qword-addresses
                   (wm-low-64 index val x86))
                  (gather-all-paging-structure-qword-addresses x86)))
  :hints (("Goal"
           :in-theory (e/d* (gather-all-paging-structure-qword-addresses)
                            ()))))

;; ======================================================================

;; RoW Theorems with R = xlate-equiv functions

(defthm xlate-equiv-entries-at-qword-addresses-aux?-with-xw-fld!=mem
  (implies (not (equal fld :mem))
           (equal (xlate-equiv-entries-at-qword-addresses-aux?
                   addrs addrs
                   x86
                   (xw fld index val x86))
                  (xlate-equiv-entries-at-qword-addresses-aux?
                   addrs addrs
                   x86
                   x86)))
  :hints (("Goal" :in-theory (e/d* (xlate-equiv-entries-at-qword-addresses-aux?)
                                   ()))))

(defthmd xlate-equiv-entries-at-qword-addresses-aux?-with-wm-low-64-1
  (implies (and (mult-8-qword-paddr-listp addrs)
                (no-duplicates-p addrs)
                (member-p index addrs)
                (or
                 (equal val (set-accessed-bit (rm-low-64 index x86)))
                 (equal val (set-dirty-bit (rm-low-64 index x86)))
                 (equal val (set-accessed-bit (set-dirty-bit (rm-low-64 index x86)))))
                (x86p x86)
                (xlate-equiv-entries-at-qword-addresses-aux? addrs addrs x86 x86))
           (xlate-equiv-entries-at-qword-addresses-aux?
            addrs addrs
            x86
            (wm-low-64 index val x86)))
  :hints (("Goal" :in-theory (e/d* (xlate-equiv-entries-at-qword-addresses-aux?
                                    member-p)
                                   (xlate-equiv-entries)))))

(defthm xlate-equiv-entries-at-qword-addresses-aux?-with-wm-low-64
  (implies (and (mult-8-qword-paddr-listp addrs)
                (no-duplicates-p addrs)
                (member-p index addrs)
                (or
                 (equal val (set-accessed-bit (rm-low-64 index x86)))
                 (equal val (set-dirty-bit (rm-low-64 index x86)))
                 (equal val (set-accessed-bit (set-dirty-bit (rm-low-64 index x86)))))
                (x86p x86))
           (equal (xlate-equiv-entries-at-qword-addresses-aux?
                   addrs addrs
                   x86
                   (wm-low-64 index val x86))
                  (xlate-equiv-entries-at-qword-addresses-aux?
                   addrs addrs x86 x86)))
  :hints (("Goal" :in-theory (e/d* (xlate-equiv-entries-at-qword-addresses-aux?-with-wm-low-64-1
                                    xlate-equiv-entries-at-qword-addresses-aux?
                                    member-p)
                                   (xlate-equiv-entries)))))

(defthm xlate-equiv-entries-at-qword-addresses-aux?-with-wm-low-64-disjoint
  (implies (and (mult-8-qword-paddr-listp addrs)
                (physical-address-p index)
                (equal (loghead 3 index) 0)
                (not (member-p index addrs)))
           (equal (xlate-equiv-entries-at-qword-addresses-aux?
                   addrs addrs
                   x86
                   (wm-low-64 index val x86))
                  (xlate-equiv-entries-at-qword-addresses-aux?
                   addrs addrs
                   x86
                   x86)))
  :hints (("Goal" :in-theory (e/d* (xlate-equiv-entries-at-qword-addresses-aux?
                                    member-p)
                                   (xlate-equiv-entries)))))

(defthm xlate-equiv-entries-at-qword-addresses?-with-xw-fld!=mem
  (implies (not (equal fld :mem))
           (equal (xlate-equiv-entries-at-qword-addresses?
                   addrs addrs
                   x86
                   (xw fld index val x86))
                  (xlate-equiv-entries-at-qword-addresses?
                   addrs addrs
                   x86
                   x86)))
  :hints (("Goal" :in-theory (e/d* (xlate-equiv-entries-at-qword-addresses?)
                                   ()))))

(defthm xlate-equiv-entries-at-qword-addresses?-with-wm-low-64-disjoint
  (implies (and (mult-8-qword-paddr-list-listp addrs)
                (not (member-list-p index addrs))
                (physical-address-p index)
                (equal (loghead 3 index) 0))
           (equal (xlate-equiv-entries-at-qword-addresses?
                   addrs addrs
                   x86
                   (wm-low-64 index val x86))
                  (xlate-equiv-entries-at-qword-addresses?
                   addrs addrs
                   x86
                   x86)))
  :hints (("Goal" :in-theory (e/d* (xlate-equiv-entries-at-qword-addresses?
                                    member-p member-list-p)
                                   (xlate-equiv-entries)))))

(defthmd member-list-p-of-mult-8-qword-paddr-list-listp-fwd-chaining
  (implies (and (member-list-p index addrs)
                (mult-8-qword-paddr-list-listp addrs))
           (and (physical-address-p index)
                (equal (loghead 3 index) 0)))
  :hints (("Goal" :in-theory (e/d* (member-p) ())))
  :rule-classes :forward-chaining)

(defthmd xlate-equiv-entries-at-qword-addresses?-with-wm-low-64-1
  (implies (and (mult-8-qword-paddr-list-listp addrs)
                (no-duplicates-list-p addrs)
                (member-list-p index addrs)
                (physical-address-p index)
                (equal (loghead 3 index) 0)
                (or (equal val (set-accessed-bit (rm-low-64 index x86)))
                    (equal val (set-dirty-bit (rm-low-64 index x86)))
                    (equal val (set-accessed-bit (set-dirty-bit (rm-low-64 index x86)))))
                (x86p x86))
           (equal
            (xlate-equiv-entries-at-qword-addresses?
             addrs addrs x86 (wm-low-64 index val x86))
            (xlate-equiv-entries-at-qword-addresses?
             addrs addrs x86 x86)))
  :hints (("Goal"
           :in-theory (e/d* (xlate-equiv-entries-at-qword-addresses?
                             member-p
                             member-list-p)
                            (xlate-equiv-entries)))))

(defthm xlate-equiv-entries-at-qword-addresses?-with-wm-low-64
  (implies (and (mult-8-qword-paddr-list-listp addrs)
                (no-duplicates-list-p addrs)
                (member-list-p index addrs)
                (or (equal val (set-accessed-bit (rm-low-64 index x86)))
                    (equal val (set-dirty-bit (rm-low-64 index x86)))
                    (equal val (set-accessed-bit (set-dirty-bit (rm-low-64 index x86)))))
                (x86p x86))
           (equal
            (xlate-equiv-entries-at-qword-addresses?
             addrs addrs x86 (wm-low-64 index val x86))
            (xlate-equiv-entries-at-qword-addresses? addrs addrs x86 x86)))
  :hints (("Goal"
           :in-theory (e/d* (xlate-equiv-entries-at-qword-addresses?-with-wm-low-64-1
                             member-list-p-of-mult-8-qword-paddr-list-listp-fwd-chaining)
                            (member-list-p
                             no-duplicates-list-p
                             member-p
                             physical-address-p)))))

;; ======================================================================

;; (i-am-here)

;; (gather-all-paging-structure-qword-addresses
;;  (wm-low-64
;;   (page-table-entry-addr
;;    (logext 48 lin-addr)
;;    (bitops::logsquash
;;     12
;;     (loghead 52
;;              (mv-nth 1
;;                      (page-table-base-addr lin-addr x86)))))
;;   (set-accessed-bit
;;    (rm-low-64
;;     (page-table-entry-addr
;;      (logext 48 lin-addr)
;;      (bitops::logsquash
;;       12
;;       (loghead 52
;;                (mv-nth 1
;;                        (page-table-base-addr lin-addr x86)))))
;;     x86))
;;   x86))

;; (xlate-equiv-entries-at-qword-addresses?
;;  (gather-all-paging-structure-qword-addresses
;;   (wm-low-64
;;    (page-table-entry-addr
;;     (logext 48 lin-addr)
;;     (bitops::logsquash
;;      12
;;      (loghead 52
;;               (mv-nth 1
;;                       (page-table-base-addr lin-addr x86)))))
;;    (set-accessed-bit
;;     (rm-low-64
;;      (page-table-entry-addr
;;       (logext 48 lin-addr)
;;       (bitops::logsquash
;;        12
;;        (loghead 52
;;                 (mv-nth 1
;;                         (page-table-base-addr lin-addr x86)))))
;;      x86))
;;    x86))
;;  (gather-all-paging-structure-qword-addresses x86)
;;  (wm-low-64
;;   (page-table-entry-addr
;;    (logext 48 lin-addr)
;;    (bitops::logsquash
;;     12
;;     (loghead 52
;;              (mv-nth 1
;;                      (page-table-base-addr lin-addr x86)))))
;;   (set-accessed-bit
;;    (rm-low-64
;;     (page-table-entry-addr
;;      (logext 48 lin-addr)
;;      (bitops::logsquash
;;       12
;;       (loghead 52
;;                (mv-nth 1
;;                        (page-table-base-addr lin-addr x86)))))
;;     x86))
;;   x86)
;;  x86)
