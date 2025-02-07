; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=sparc-unknown-linux-gnu | FileCheck %s --check-prefixes=SPARC
; RUN: llc < %s -mtriple=sparc64-unknown-linux-gnu | FileCheck %s --check-prefixes=SPARC64

define { i128, i8 } @muloti_test(i128 %l, i128 %r) unnamed_addr #0 {
; SPARC-LABEL: muloti_test:
; SPARC:         .cfi_startproc
; SPARC-NEXT:  ! %bb.0: ! %start
; SPARC-NEXT:    save %sp, -136, %sp
; SPARC-NEXT:    .cfi_def_cfa_register %fp
; SPARC-NEXT:    .cfi_window_save
; SPARC-NEXT:    .cfi_register %o7, %i7
; SPARC-NEXT:    ld [%fp+92], %l2
; SPARC-NEXT:    ld [%fp+96], %l3
; SPARC-NEXT:    mov %i3, %l7
; SPARC-NEXT:    mov %i2, %l5
; SPARC-NEXT:    mov %i1, %l4
; SPARC-NEXT:    mov %i0, %l6
; SPARC-NEXT:    sra %i0, 31, %o4
; SPARC-NEXT:    st %o4, [%sp+96]
; SPARC-NEXT:    st %o4, [%sp+92]
; SPARC-NEXT:    mov %i4, %o0
; SPARC-NEXT:    mov %i5, %o1
; SPARC-NEXT:    mov %l2, %o2
; SPARC-NEXT:    mov %l3, %o3
; SPARC-NEXT:    call __multi3
; SPARC-NEXT:    mov %o4, %o5
; SPARC-NEXT:    st %o0, [%fp+-12] ! 4-byte Folded Spill
; SPARC-NEXT:    st %o1, [%fp+-16] ! 4-byte Folded Spill
; SPARC-NEXT:    st %o2, [%fp+-20] ! 4-byte Folded Spill
; SPARC-NEXT:    st %o3, [%fp+-24] ! 4-byte Folded Spill
; SPARC-NEXT:    st %i5, [%sp+96]
; SPARC-NEXT:    mov %g0, %l0
; SPARC-NEXT:    st %i4, [%sp+92]
; SPARC-NEXT:    mov %l0, %o0
; SPARC-NEXT:    mov %l0, %o1
; SPARC-NEXT:    mov %i2, %o2
; SPARC-NEXT:    mov %i3, %o3
; SPARC-NEXT:    mov %l0, %o4
; SPARC-NEXT:    call __multi3
; SPARC-NEXT:    mov %l0, %o5
; SPARC-NEXT:    st %o0, [%fp+-28] ! 4-byte Folded Spill
; SPARC-NEXT:    st %o1, [%fp+-32] ! 4-byte Folded Spill
; SPARC-NEXT:    st %o2, [%fp+-36] ! 4-byte Folded Spill
; SPARC-NEXT:    mov %o3, %i3
; SPARC-NEXT:    st %l3, [%sp+96]
; SPARC-NEXT:    st %l2, [%sp+92]
; SPARC-NEXT:    mov %l0, %o0
; SPARC-NEXT:    mov %l0, %o1
; SPARC-NEXT:    mov %i2, %o2
; SPARC-NEXT:    mov %l7, %o3
; SPARC-NEXT:    mov %l0, %o4
; SPARC-NEXT:    call __multi3
; SPARC-NEXT:    mov %l0, %o5
; SPARC-NEXT:    mov %o0, %i0
; SPARC-NEXT:    mov %o1, %i1
; SPARC-NEXT:    st %o2, [%fp+-4] ! 4-byte Folded Spill
; SPARC-NEXT:    st %o3, [%fp+-8] ! 4-byte Folded Spill
; SPARC-NEXT:    st %l3, [%sp+96]
; SPARC-NEXT:    st %l2, [%sp+92]
; SPARC-NEXT:    mov %l0, %o0
; SPARC-NEXT:    mov %l0, %o1
; SPARC-NEXT:    mov %l6, %o2
; SPARC-NEXT:    mov %l4, %o3
; SPARC-NEXT:    mov %l0, %o4
; SPARC-NEXT:    call __multi3
; SPARC-NEXT:    mov %l0, %o5
; SPARC-NEXT:    mov %o0, %l2
; SPARC-NEXT:    mov %o1, %l3
; SPARC-NEXT:    mov %o2, %l1
; SPARC-NEXT:    mov %o3, %i2
; SPARC-NEXT:    st %l7, [%sp+96]
; SPARC-NEXT:    sra %i4, 31, %o0
; SPARC-NEXT:    st %l5, [%sp+92]
; SPARC-NEXT:    mov %o0, %o1
; SPARC-NEXT:    mov %o0, %o2
; SPARC-NEXT:    mov %o0, %o3
; SPARC-NEXT:    mov %l6, %o4
; SPARC-NEXT:    call __multi3
; SPARC-NEXT:    mov %l4, %o5
; SPARC-NEXT:    st %i5, [%sp+96]
; SPARC-NEXT:    st %i4, [%sp+92]
; SPARC-NEXT:    ld [%fp+-24], %i4 ! 4-byte Folded Reload
; SPARC-NEXT:    addcc %o3, %i4, %i4
; SPARC-NEXT:    ld [%fp+-20], %i5 ! 4-byte Folded Reload
; SPARC-NEXT:    addxcc %o2, %i5, %i5
; SPARC-NEXT:    ld [%fp+-16], %g2 ! 4-byte Folded Reload
; SPARC-NEXT:    addxcc %o1, %g2, %l5
; SPARC-NEXT:    ld [%fp+-12], %g2 ! 4-byte Folded Reload
; SPARC-NEXT:    addxcc %o0, %g2, %l7
; SPARC-NEXT:    addcc %i2, %i1, %i1
; SPARC-NEXT:    addxcc %l1, %i0, %i0
; SPARC-NEXT:    addxcc %l3, 0, %i2
; SPARC-NEXT:    addxcc %l2, 0, %g2
; SPARC-NEXT:    addcc %i3, %i1, %i1
; SPARC-NEXT:    ld [%fp+-36], %i3 ! 4-byte Folded Reload
; SPARC-NEXT:    addxcc %i3, %i0, %i0
; SPARC-NEXT:    ld [%fp+-32], %i3 ! 4-byte Folded Reload
; SPARC-NEXT:    addxcc %i3, 0, %i3
; SPARC-NEXT:    ld [%fp+-28], %g3 ! 4-byte Folded Reload
; SPARC-NEXT:    addxcc %g3, 0, %g3
; SPARC-NEXT:    addcc %i2, %i3, %i2
; SPARC-NEXT:    addxcc %g2, %g3, %i3
; SPARC-NEXT:    addxcc %l0, 0, %l1
; SPARC-NEXT:    addxcc %l0, 0, %l2
; SPARC-NEXT:    mov %l0, %o0
; SPARC-NEXT:    mov %l0, %o1
; SPARC-NEXT:    mov %l6, %o2
; SPARC-NEXT:    mov %l4, %o3
; SPARC-NEXT:    mov %l0, %o4
; SPARC-NEXT:    call __multi3
; SPARC-NEXT:    mov %l0, %o5
; SPARC-NEXT:    addcc %o3, %i2, %i2
; SPARC-NEXT:    addxcc %o2, %i3, %i3
; SPARC-NEXT:    addxcc %o1, %l1, %g2
; SPARC-NEXT:    addxcc %o0, %l2, %g3
; SPARC-NEXT:    addcc %i2, %i4, %i2
; SPARC-NEXT:    addxcc %i3, %i5, %i3
; SPARC-NEXT:    addxcc %g2, %l5, %i4
; SPARC-NEXT:    addxcc %g3, %l7, %i5
; SPARC-NEXT:    sra %i0, 31, %g2
; SPARC-NEXT:    xor %i5, %g2, %i5
; SPARC-NEXT:    xor %i3, %g2, %i3
; SPARC-NEXT:    or %i3, %i5, %i3
; SPARC-NEXT:    xor %i4, %g2, %i4
; SPARC-NEXT:    xor %i2, %g2, %i2
; SPARC-NEXT:    or %i2, %i4, %i2
; SPARC-NEXT:    or %i2, %i3, %i2
; SPARC-NEXT:    cmp %i2, 0
; SPARC-NEXT:    be .LBB0_2
; SPARC-NEXT:    nop
; SPARC-NEXT:  ! %bb.1:
; SPARC-NEXT:    mov 1, %l0
; SPARC-NEXT:  .LBB0_2: ! %start
; SPARC-NEXT:    ld [%fp+-4], %i2 ! 4-byte Folded Reload
; SPARC-NEXT:    ld [%fp+-8], %i3 ! 4-byte Folded Reload
; SPARC-NEXT:    ret
; SPARC-NEXT:    restore %g0, %l0, %o4
;
; SPARC64-LABEL: muloti_test:
; SPARC64:         .cfi_startproc
; SPARC64-NEXT:    .register %g2, #scratch
; SPARC64-NEXT:    .register %g3, #scratch
; SPARC64-NEXT:  ! %bb.0: ! %start
; SPARC64-NEXT:    save %sp, -192, %sp
; SPARC64-NEXT:    .cfi_def_cfa_register %fp
; SPARC64-NEXT:    .cfi_window_save
; SPARC64-NEXT:    .cfi_register %o7, %i7
; SPARC64-NEXT:    mov %i3, %i4
; SPARC64-NEXT:    mov %i1, %i3
; SPARC64-NEXT:    srax %i0, 63, %o2
; SPARC64-NEXT:    mov %i2, %o0
; SPARC64-NEXT:    mov %i4, %o1
; SPARC64-NEXT:    call __multi3
; SPARC64-NEXT:    mov %o2, %o3
; SPARC64-NEXT:    mov %o0, %i1
; SPARC64-NEXT:    mov %o1, %i5
; SPARC64-NEXT:    srax %i2, 63, %o0
; SPARC64-NEXT:    mov %o0, %o1
; SPARC64-NEXT:    mov %i0, %o2
; SPARC64-NEXT:    call __multi3
; SPARC64-NEXT:    mov %i3, %o3
; SPARC64-NEXT:    srlx %i5, 32, %g2
; SPARC64-NEXT:    srlx %o1, 32, %g3
; SPARC64-NEXT:    srlx %i1, 32, %g4
; SPARC64-NEXT:    srlx %o0, 32, %g5
; SPARC64-NEXT:    addcc %o1, %i5, %i5
; SPARC64-NEXT:    st %i5, [%fp+2043] ! 4-byte Folded Spill
; SPARC64-NEXT:    addxcc %g3, %g2, %l2
; SPARC64-NEXT:    addxcc %o0, %i1, %l3
; SPARC64-NEXT:    addxcc %g5, %g4, %l4
; SPARC64-NEXT:    mov 0, %i5
; SPARC64-NEXT:    mov %i5, %o0
; SPARC64-NEXT:    mov %i3, %o1
; SPARC64-NEXT:    mov %i5, %o2
; SPARC64-NEXT:    call __multi3
; SPARC64-NEXT:    mov %i4, %o3
; SPARC64-NEXT:    mov %o0, %l0
; SPARC64-NEXT:    mov %o1, %i1
; SPARC64-NEXT:    mov %i5, %o0
; SPARC64-NEXT:    mov %i0, %o1
; SPARC64-NEXT:    mov %i5, %o2
; SPARC64-NEXT:    call __multi3
; SPARC64-NEXT:    mov %i4, %o3
; SPARC64-NEXT:    srlx %l0, 32, %i4
; SPARC64-NEXT:    srlx %o1, 32, %g2
; SPARC64-NEXT:    srlx %o0, 32, %g3
; SPARC64-NEXT:    addcc %o1, %l0, %l0
; SPARC64-NEXT:    addxcc %g2, %i4, %i4
; SPARC64-NEXT:    addxcc %o0, 0, %l5
; SPARC64-NEXT:    addxcc %g3, 0, %l6
; SPARC64-NEXT:    mov %i5, %o0
; SPARC64-NEXT:    mov %i3, %o1
; SPARC64-NEXT:    mov %i5, %o2
; SPARC64-NEXT:    call __multi3
; SPARC64-NEXT:    mov %i2, %o3
; SPARC64-NEXT:    srlx %o1, 32, %i3
; SPARC64-NEXT:    srlx %o0, 32, %g2
; SPARC64-NEXT:    addcc %o1, %l0, %l0
; SPARC64-NEXT:    addxcc %i3, %i4, %i3
; SPARC64-NEXT:    addxcc %o0, 0, %i4
; SPARC64-NEXT:    addxcc %g2, 0, %g2
; SPARC64-NEXT:    mov %g0, %l7
; SPARC64-NEXT:    addcc %l5, %i4, %i4
; SPARC64-NEXT:    addxcc %l6, %g2, %l5
; SPARC64-NEXT:    addxcc %l7, 0, %l6
; SPARC64-NEXT:    addxcc %l7, 0, %l1
; SPARC64-NEXT:    mov %i5, %o0
; SPARC64-NEXT:    mov %i0, %o1
; SPARC64-NEXT:    mov %i5, %o2
; SPARC64-NEXT:    call __multi3
; SPARC64-NEXT:    mov %i2, %o3
; SPARC64-NEXT:    srlx %o1, 32, %i0
; SPARC64-NEXT:    srlx %o0, 32, %i2
; SPARC64-NEXT:    addcc %o1, %i4, %i4
; SPARC64-NEXT:    addxcc %i0, %l5, %i0
; SPARC64-NEXT:    addxcc %o0, %l6, %i5
; SPARC64-NEXT:    addxcc %i2, %l1, %i2
; SPARC64-NEXT:    ld [%fp+2043], %g2 ! 4-byte Folded Reload
; SPARC64-NEXT:    addcc %i4, %g2, %i4
; SPARC64-NEXT:    addxcc %i0, %l2, %i0
; SPARC64-NEXT:    addxcc %i5, %l3, %i5
; SPARC64-NEXT:    addxcc %i2, %l4, %i2
; SPARC64-NEXT:    srl %i5, 0, %i5
; SPARC64-NEXT:    sllx %i2, 32, %i2
; SPARC64-NEXT:    or %i2, %i5, %i2
; SPARC64-NEXT:    sllx %i3, 32, %i3
; SPARC64-NEXT:    srax %i3, 63, %i5
; SPARC64-NEXT:    xor %i2, %i5, %i2
; SPARC64-NEXT:    srl %i4, 0, %i4
; SPARC64-NEXT:    sllx %i0, 32, %i0
; SPARC64-NEXT:    or %i0, %i4, %i0
; SPARC64-NEXT:    xor %i0, %i5, %i0
; SPARC64-NEXT:    or %i0, %i2, %i0
; SPARC64-NEXT:    movrnz %i0, 1, %l7
; SPARC64-NEXT:    srl %l0, 0, %i0
; SPARC64-NEXT:    or %i3, %i0, %i0
; SPARC64-NEXT:    srl %l7, 0, %i2
; SPARC64-NEXT:    ret
; SPARC64-NEXT:    restore
start:
  %0 = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %l, i128 %r) #2
  %1 = extractvalue { i128, i1 } %0, 0
  %2 = extractvalue { i128, i1 } %0, 1
  %3 = zext i1 %2 to i8
  %4 = insertvalue { i128, i8 } undef, i128 %1, 0
  %5 = insertvalue { i128, i8 } %4, i8 %3, 1
  ret { i128, i8 } %5
}

; Function Attrs: nounwind readnone speculatable
declare { i128, i1 } @llvm.smul.with.overflow.i128(i128, i128) #1

attributes #0 = { nounwind readnone uwtable }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }
