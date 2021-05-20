# 1 "/datapart1/Forked-OP2/OP2-Common/op2/fortran/src/op2_for_reference.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/datapart1/Forked-OP2/OP2-Common/op2/fortran/src/op2_for_reference.c"
!
! Open source copyright declaration based on BSD open source template:
! http:
!
! This file is part of the OP2 distribution.
!
! Copyright (c) 2011, Mike Giles and others. Please see the AUTHORS file in
! the main source directory for a full list of copyright holders.
! All rights reserved.
!
! Redistribution and use in source and binary forms, with or without
! modification, are permitted provided that the following conditions are met:
! * Redistributions of source code must retain the above copyright
! notice, this list of conditions and the following disclaimer.
! * Redistributions in binary form must reproduce the above copyright
! notice, this list of conditions and the following disclaimer in the
! documentation and/or other materials provided with the distribution.
! * The name of Mike Giles may not be used to endorse or promote products
! derived from this software without specific prior written permission.
!
! THIS SOFTWARE IS PROVIDED BY Mike Giles ''AS IS'' AND ANY
! EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
! WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
! DISCLAIMED. IN NO EVENT SHALL Mike Giles BE LIABLE FOR ANY
! DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
! (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
! LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
! ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
! (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
! SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
!

! Implementation of serial reference op_par_loop functions

# 1 "/datapart1/Forked-OP2/OP2-Common/op2/fortran/src/../include/op2_reference_macros.h" 1
# 36 "/datapart1/Forked-OP2/OP2-Common/op2/fortran/src/op2_for_reference.c" 2

! FORTRAN interface of C-based reference implementation
module OP2_Fortran_Reference

  use OP2_Fortran_Declarations

  interface

! Generation of interfaces to op_par_loop functions in C through preprocessor macros
# 64 "/datapart1/Forked-OP2/OP2-Common/op2/fortran/src/op2_for_reference.c"
subroutine op_par_loop_1_f(kernel, set, &
 arg1 &
 ) BIND(C,name="op_par_loop_1") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 
end subroutine op_par_loop_1_f 
 subroutine op_par_loop_2_f(kernel, set, &
 arg1 &
, arg2 &
 ) BIND(C,name="op_par_loop_2") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 
end subroutine op_par_loop_2_f 
 subroutine op_par_loop_3_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
 ) BIND(C,name="op_par_loop_3") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 
end subroutine op_par_loop_3_f 
 subroutine op_par_loop_4_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
 ) BIND(C,name="op_par_loop_4") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 
end subroutine op_par_loop_4_f 
 subroutine op_par_loop_5_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
 ) BIND(C,name="op_par_loop_5") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 
end subroutine op_par_loop_5_f 
 subroutine op_par_loop_6_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
 ) BIND(C,name="op_par_loop_6") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 
end subroutine op_par_loop_6_f 
 subroutine op_par_loop_7_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
 ) BIND(C,name="op_par_loop_7") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 
end subroutine op_par_loop_7_f 
 subroutine op_par_loop_8_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
 ) BIND(C,name="op_par_loop_8") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 
end subroutine op_par_loop_8_f 
 subroutine op_par_loop_9_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
 ) BIND(C,name="op_par_loop_9") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 
end subroutine op_par_loop_9_f 
 subroutine op_par_loop_10_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
 ) BIND(C,name="op_par_loop_10") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 
end subroutine op_par_loop_10_f 

subroutine op_par_loop_11_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
 ) BIND(C,name="op_par_loop_11") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 
end subroutine op_par_loop_11_f 
 subroutine op_par_loop_12_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
 ) BIND(C,name="op_par_loop_12") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 
end subroutine op_par_loop_12_f 
 subroutine op_par_loop_13_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
 ) BIND(C,name="op_par_loop_13") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 
end subroutine op_par_loop_13_f 
 subroutine op_par_loop_14_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
 ) BIND(C,name="op_par_loop_14") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 
end subroutine op_par_loop_14_f 
 subroutine op_par_loop_15_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
 ) BIND(C,name="op_par_loop_15") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 
end subroutine op_par_loop_15_f 
 subroutine op_par_loop_16_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
 ) BIND(C,name="op_par_loop_16") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 
end subroutine op_par_loop_16_f 
 subroutine op_par_loop_17_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
 ) BIND(C,name="op_par_loop_17") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 
end subroutine op_par_loop_17_f 
 subroutine op_par_loop_18_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
 ) BIND(C,name="op_par_loop_18") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 
end subroutine op_par_loop_18_f 
 subroutine op_par_loop_19_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
 ) BIND(C,name="op_par_loop_19") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 
end subroutine op_par_loop_19_f 
 subroutine op_par_loop_20_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
 ) BIND(C,name="op_par_loop_20") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 
end subroutine op_par_loop_20_f 

subroutine op_par_loop_21_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
 ) BIND(C,name="op_par_loop_21") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 
end subroutine op_par_loop_21_f 
 subroutine op_par_loop_22_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
 ) BIND(C,name="op_par_loop_22") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 
end subroutine op_par_loop_22_f 
 subroutine op_par_loop_23_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
 ) BIND(C,name="op_par_loop_23") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 
end subroutine op_par_loop_23_f 
 subroutine op_par_loop_24_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
 ) BIND(C,name="op_par_loop_24") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 
end subroutine op_par_loop_24_f 
 subroutine op_par_loop_25_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
 ) BIND(C,name="op_par_loop_25") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 
end subroutine op_par_loop_25_f 
 subroutine op_par_loop_26_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
 ) BIND(C,name="op_par_loop_26") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 
end subroutine op_par_loop_26_f 
 subroutine op_par_loop_27_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
 ) BIND(C,name="op_par_loop_27") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 
end subroutine op_par_loop_27_f 
 subroutine op_par_loop_28_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
 ) BIND(C,name="op_par_loop_28") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 
end subroutine op_par_loop_28_f 
 subroutine op_par_loop_29_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
 ) BIND(C,name="op_par_loop_29") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 
end subroutine op_par_loop_29_f 
 subroutine op_par_loop_30_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
 ) BIND(C,name="op_par_loop_30") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 
end subroutine op_par_loop_30_f 

subroutine op_par_loop_31_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
 ) BIND(C,name="op_par_loop_31") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 
end subroutine op_par_loop_31_f 
 subroutine op_par_loop_32_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
 ) BIND(C,name="op_par_loop_32") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 
end subroutine op_par_loop_32_f 
 subroutine op_par_loop_33_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
 ) BIND(C,name="op_par_loop_33") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 
end subroutine op_par_loop_33_f 
 subroutine op_par_loop_34_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
 ) BIND(C,name="op_par_loop_34") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 
end subroutine op_par_loop_34_f 
 subroutine op_par_loop_35_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
 ) BIND(C,name="op_par_loop_35") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 
end subroutine op_par_loop_35_f 
 subroutine op_par_loop_36_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
 ) BIND(C,name="op_par_loop_36") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 
end subroutine op_par_loop_36_f 
 subroutine op_par_loop_37_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
 ) BIND(C,name="op_par_loop_37") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 
end subroutine op_par_loop_37_f 
 subroutine op_par_loop_38_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
 ) BIND(C,name="op_par_loop_38") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 
end subroutine op_par_loop_38_f 
 subroutine op_par_loop_39_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
 ) BIND(C,name="op_par_loop_39") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 
end subroutine op_par_loop_39_f 
 subroutine op_par_loop_40_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
 ) BIND(C,name="op_par_loop_40") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 
end subroutine op_par_loop_40_f 

subroutine op_par_loop_41_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
 ) BIND(C,name="op_par_loop_41") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 
end subroutine op_par_loop_41_f 
 subroutine op_par_loop_42_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
 ) BIND(C,name="op_par_loop_42") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 
end subroutine op_par_loop_42_f 
 subroutine op_par_loop_43_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
 ) BIND(C,name="op_par_loop_43") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 
end subroutine op_par_loop_43_f 
 subroutine op_par_loop_44_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
 ) BIND(C,name="op_par_loop_44") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 
end subroutine op_par_loop_44_f 
 subroutine op_par_loop_45_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
 ) BIND(C,name="op_par_loop_45") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 
end subroutine op_par_loop_45_f 
 subroutine op_par_loop_46_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
 ) BIND(C,name="op_par_loop_46") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 
end subroutine op_par_loop_46_f 
 subroutine op_par_loop_47_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
 ) BIND(C,name="op_par_loop_47") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 type(op_arg) :: arg47 
 
end subroutine op_par_loop_47_f 
 subroutine op_par_loop_48_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
 ) BIND(C,name="op_par_loop_48") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 type(op_arg) :: arg47 
 type(op_arg) :: arg48 
 
end subroutine op_par_loop_48_f 
 subroutine op_par_loop_49_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
, arg49 &
 ) BIND(C,name="op_par_loop_49") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 type(op_arg) :: arg47 
 type(op_arg) :: arg48 
 type(op_arg) :: arg49 
 
end subroutine op_par_loop_49_f 
 subroutine op_par_loop_50_f(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
, arg49 &
, arg50 &
 ) BIND(C,name="op_par_loop_50") 
 use, intrinsic :: ISO_C_BINDING 
 import :: op_set_core, op_arg 
interface 
 subroutine kernel () BIND(C) 
 end subroutine kernel 
end interface 
 type(op_set_core) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 type(op_arg) :: arg47 
 type(op_arg) :: arg48 
 type(op_arg) :: arg49 
 type(op_arg) :: arg50 
 
end subroutine op_par_loop_50_f 


end interface

  contains




! ARG_LIST and ARGT_LIST reused from OP_LOOP
# 89 "/datapart1/Forked-OP2/OP2-Common/op2/fortran/src/op2_for_reference.c"
subroutine op_par_loop_1(kernel, set, &
 arg1 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 
 call op_par_loop_1_f(kernel, set%setPtr, &
 arg1 &
 ) 
end subroutine op_par_loop_1 
 subroutine op_par_loop_2(kernel, set, &
 arg1 &
, arg2 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 
 call op_par_loop_2_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
 ) 
end subroutine op_par_loop_2 
 subroutine op_par_loop_3(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 
 call op_par_loop_3_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
 ) 
end subroutine op_par_loop_3 
 subroutine op_par_loop_4(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 
 call op_par_loop_4_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
 ) 
end subroutine op_par_loop_4 
 subroutine op_par_loop_5(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 
 call op_par_loop_5_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
 ) 
end subroutine op_par_loop_5 
 subroutine op_par_loop_6(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 
 call op_par_loop_6_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
 ) 
end subroutine op_par_loop_6 
 subroutine op_par_loop_7(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 
 call op_par_loop_7_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
 ) 
end subroutine op_par_loop_7 
 subroutine op_par_loop_8(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 
 call op_par_loop_8_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
 ) 
end subroutine op_par_loop_8 
 subroutine op_par_loop_9(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 
 call op_par_loop_9_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
 ) 
end subroutine op_par_loop_9 
 subroutine op_par_loop_10(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 
 call op_par_loop_10_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
 ) 
end subroutine op_par_loop_10 

subroutine op_par_loop_11(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 
 call op_par_loop_11_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
 ) 
end subroutine op_par_loop_11 
 subroutine op_par_loop_12(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 
 call op_par_loop_12_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
 ) 
end subroutine op_par_loop_12 
 subroutine op_par_loop_13(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 
 call op_par_loop_13_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
 ) 
end subroutine op_par_loop_13 
 subroutine op_par_loop_14(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 
 call op_par_loop_14_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
 ) 
end subroutine op_par_loop_14 
 subroutine op_par_loop_15(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 
 call op_par_loop_15_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
 ) 
end subroutine op_par_loop_15 
 subroutine op_par_loop_16(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 
 call op_par_loop_16_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
 ) 
end subroutine op_par_loop_16 
 subroutine op_par_loop_17(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 
 call op_par_loop_17_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
 ) 
end subroutine op_par_loop_17 
 subroutine op_par_loop_18(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 
 call op_par_loop_18_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
 ) 
end subroutine op_par_loop_18 
 subroutine op_par_loop_19(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 
 call op_par_loop_19_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
 ) 
end subroutine op_par_loop_19 
 subroutine op_par_loop_20(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 
 call op_par_loop_20_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
 ) 
end subroutine op_par_loop_20 

subroutine op_par_loop_21(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 
 call op_par_loop_21_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
 ) 
end subroutine op_par_loop_21 
 subroutine op_par_loop_22(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 
 call op_par_loop_22_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
 ) 
end subroutine op_par_loop_22 
 subroutine op_par_loop_23(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 
 call op_par_loop_23_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
 ) 
end subroutine op_par_loop_23 
 subroutine op_par_loop_24(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 
 call op_par_loop_24_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
 ) 
end subroutine op_par_loop_24 
 subroutine op_par_loop_25(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 
 call op_par_loop_25_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
 ) 
end subroutine op_par_loop_25 
 subroutine op_par_loop_26(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 
 call op_par_loop_26_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
 ) 
end subroutine op_par_loop_26 
 subroutine op_par_loop_27(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 
 call op_par_loop_27_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
 ) 
end subroutine op_par_loop_27 
 subroutine op_par_loop_28(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 
 call op_par_loop_28_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
 ) 
end subroutine op_par_loop_28 
 subroutine op_par_loop_29(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 
 call op_par_loop_29_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
 ) 
end subroutine op_par_loop_29 
 subroutine op_par_loop_30(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 
 call op_par_loop_30_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
 ) 
end subroutine op_par_loop_30 

subroutine op_par_loop_31(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 
 call op_par_loop_31_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
 ) 
end subroutine op_par_loop_31 
 subroutine op_par_loop_32(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 
 call op_par_loop_32_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
 ) 
end subroutine op_par_loop_32 
 subroutine op_par_loop_33(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 
 call op_par_loop_33_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
 ) 
end subroutine op_par_loop_33 
 subroutine op_par_loop_34(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 
 call op_par_loop_34_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
 ) 
end subroutine op_par_loop_34 
 subroutine op_par_loop_35(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 
 call op_par_loop_35_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
 ) 
end subroutine op_par_loop_35 
 subroutine op_par_loop_36(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 
 call op_par_loop_36_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
 ) 
end subroutine op_par_loop_36 
 subroutine op_par_loop_37(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 
 call op_par_loop_37_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
 ) 
end subroutine op_par_loop_37 
 subroutine op_par_loop_38(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 
 call op_par_loop_38_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
 ) 
end subroutine op_par_loop_38 
 subroutine op_par_loop_39(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 
 call op_par_loop_39_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
 ) 
end subroutine op_par_loop_39 
 subroutine op_par_loop_40(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 
 call op_par_loop_40_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
 ) 
end subroutine op_par_loop_40 

subroutine op_par_loop_41(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 
 call op_par_loop_41_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
 ) 
end subroutine op_par_loop_41 
 subroutine op_par_loop_42(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 
 call op_par_loop_42_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
 ) 
end subroutine op_par_loop_42 
 subroutine op_par_loop_43(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 
 call op_par_loop_43_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
 ) 
end subroutine op_par_loop_43 
 subroutine op_par_loop_44(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 
 call op_par_loop_44_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
 ) 
end subroutine op_par_loop_44 
 subroutine op_par_loop_45(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 
 call op_par_loop_45_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
 ) 
end subroutine op_par_loop_45 
 subroutine op_par_loop_46(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 
 call op_par_loop_46_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
 ) 
end subroutine op_par_loop_46 
 subroutine op_par_loop_47(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 type(op_arg) :: arg47 
 
 call op_par_loop_47_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
 ) 
end subroutine op_par_loop_47 
 subroutine op_par_loop_48(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 type(op_arg) :: arg47 
 type(op_arg) :: arg48 
 
 call op_par_loop_48_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
 ) 
end subroutine op_par_loop_48 
 subroutine op_par_loop_49(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
, arg49 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 type(op_arg) :: arg47 
 type(op_arg) :: arg48 
 type(op_arg) :: arg49 
 
 call op_par_loop_49_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
, arg49 &
 ) 
end subroutine op_par_loop_49 
 subroutine op_par_loop_50(kernel, set, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
, arg49 &
, arg50 &
 ) 
 external kernel 
 type(op_set) :: set 
 type(op_arg) :: arg1 
 type(op_arg) :: arg2 
 type(op_arg) :: arg3 
 type(op_arg) :: arg4 
 type(op_arg) :: arg5 
 type(op_arg) :: arg6 
 type(op_arg) :: arg7 
 type(op_arg) :: arg8 
 type(op_arg) :: arg9 
 type(op_arg) :: arg10 
 type(op_arg) :: arg11 
 type(op_arg) :: arg12 
 type(op_arg) :: arg13 
 type(op_arg) :: arg14 
 type(op_arg) :: arg15 
 type(op_arg) :: arg16 
 type(op_arg) :: arg17 
 type(op_arg) :: arg18 
 type(op_arg) :: arg19 
 type(op_arg) :: arg20 
 type(op_arg) :: arg21 
 type(op_arg) :: arg22 
 type(op_arg) :: arg23 
 type(op_arg) :: arg24 
 type(op_arg) :: arg25 
 type(op_arg) :: arg26 
 type(op_arg) :: arg27 
 type(op_arg) :: arg28 
 type(op_arg) :: arg29 
 type(op_arg) :: arg30 
 type(op_arg) :: arg31 
 type(op_arg) :: arg32 
 type(op_arg) :: arg33 
 type(op_arg) :: arg34 
 type(op_arg) :: arg35 
 type(op_arg) :: arg36 
 type(op_arg) :: arg37 
 type(op_arg) :: arg38 
 type(op_arg) :: arg39 
 type(op_arg) :: arg40 
 type(op_arg) :: arg41 
 type(op_arg) :: arg42 
 type(op_arg) :: arg43 
 type(op_arg) :: arg44 
 type(op_arg) :: arg45 
 type(op_arg) :: arg46 
 type(op_arg) :: arg47 
 type(op_arg) :: arg48 
 type(op_arg) :: arg49 
 type(op_arg) :: arg50 
 
 call op_par_loop_50_f(kernel, set%setPtr, &
 arg1 &
, arg2 &
, arg3 &
, arg4 &
, arg5 &
, arg6 &
, arg7 &
, arg8 &
, arg9 &
, arg10 &
, arg11 &
, arg12 &
, arg13 &
, arg14 &
, arg15 &
, arg16 &
, arg17 &
, arg18 &
, arg19 &
, arg20 &
, arg21 &
, arg22 &
, arg23 &
, arg24 &
, arg25 &
, arg26 &
, arg27 &
, arg28 &
, arg29 &
, arg30 &
, arg31 &
, arg32 &
, arg33 &
, arg34 &
, arg35 &
, arg36 &
, arg37 &
, arg38 &
, arg39 &
, arg40 &
, arg41 &
, arg42 &
, arg43 &
, arg44 &
, arg45 &
, arg46 &
, arg47 &
, arg48 &
, arg49 &
, arg50 &
 ) 
end subroutine op_par_loop_50 



end module OP2_Fortran_Reference
