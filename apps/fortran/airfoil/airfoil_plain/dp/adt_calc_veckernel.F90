!
! auto-generated by op2_fortran.py
!

MODULE ADT_CALC_MODULE
USE OP2_FORTRAN_DECLARATIONS
USE OP2_FORTRAN_RT_SUPPORT
USE ISO_C_BINDING
USE OP2_CONSTANTS


CONTAINS

! user function
SUBROUTINE adt_calc(x1,x2,x3,x4,q,adt)
  IMPLICIT NONE
  REAL(kind=8), DIMENSION(2), INTENT(IN) :: x1
  REAL(kind=8), DIMENSION(2), INTENT(IN) :: x2
  REAL(kind=8), DIMENSION(2), INTENT(IN) :: x3
  REAL(kind=8), DIMENSION(2), INTENT(IN) :: x4
  REAL(kind=8), DIMENSION(4), INTENT(IN) :: q
  REAL(kind=8) :: adt
  REAL(kind=8) :: dx,dy,ri,u,v,c

  ri = 1.0 / q(1)
  u = ri * q(2)
  v = ri * q(3)
  c = sqrt(gam * gm1 * (ri * q(4) - 0.5 * (u * u + v * v)))
  dx = x2(1) - x1(1)
  dy = x2(2) - x1(2)
  adt = abs(u * dy - v * dx) + c * sqrt(dx * dx + dy * dy)
  dx = x3(1) - x2(1)
  dy = x3(2) - x2(2)
  adt = adt + abs(u * dy - v * dx) + c * sqrt(dx * dx + dy * dy)
  dx = x4(1) - x3(1)
  dy = x4(2) - x3(2)
  adt = adt + abs(u * dy - v * dx) + c * sqrt(dx * dx + dy * dy)
  dx = x1(1) - x4(1)
  dy = x1(2) - x4(2)
  adt = adt + abs(u * dy - v * dx) + c * sqrt(dx * dx + dy * dy)
  adt = adt / cfl
END SUBROUTINE

#define SIMD_VEC 4
#define VECTORIZE
#ifdef VECTORIZE
! user function -- modified for vectorisation
SUBROUTINE adt_calc_vec(x1,x2,x3,x4,q,adt,idx)
  !dir$ attributes vector :: adt_calc_vec

  IMPLICIT NONE
  INTEGER(KIND=4) :: idx
  real(8), DIMENSION(SIMD_VEC,2), INTENT(IN) :: x1
  real(8), DIMENSION(SIMD_VEC,2), INTENT(IN) :: x2
  real(8), DIMENSION(SIMD_VEC,2), INTENT(IN) :: x3
  real(8), DIMENSION(SIMD_VEC,2), INTENT(IN) :: x4
  REAL(kind=8), DIMENSION(4), INTENT(IN) :: q
  REAL(kind=8) :: adt
  REAL(kind=8) :: dx
  REAL(kind=8) :: dy
  REAL(kind=8) :: ri
  REAL(kind=8) :: u
  REAL(kind=8) :: v
  REAL(kind=8) :: c

  ri = 1.0 / q(1)
  u = ri * q(2)
  v = ri * q(3)
  c = sqrt(gam * gm1 * (ri * q(4) - 0.5 * (u * u + v * v)))
  dx = x2(idx,1) - x1(idx,1)
  dy = x2(idx,2) - x1(idx,2)
  adt = abs(u * dy - v * dx) + c * sqrt(dx * dx + dy * dy)
  dx = x3(idx,1) - x2(idx,1)
  dy = x3(idx,2) - x2(idx,2)
  adt = adt + abs(u * dy - v * dx) + c * sqrt(dx * dx + dy * dy)
  dx = x4(idx,1) - x3(idx,1)
  dy = x4(idx,2) - x3(idx,2)
  adt = adt + abs(u * dy - v * dx) + c * sqrt(dx * dx + dy * dy)
  dx = x1(idx,1) - x4(idx,1)
  dy = x1(idx,2) - x4(idx,2)
  adt = adt + abs(u * dy - v * dx) + c * sqrt(dx * dx + dy * dy)
  adt = adt / cfl
end subroutine
#endif

SUBROUTINE op_wrap_adt_calc( &
  & opDat1Local, &
  & opDat5Local, &
  & opDat6Local, &
  & opDat1Map, &
  & opDat1MapDim, &
  & bottom,top)
  implicit none
  real(8) opDat1Local(2,*)
  real(8) opDat5Local(4,*)
  real(8) opDat6Local(1,*)
  INTEGER(kind=4) opDat1Map(*)
  INTEGER(kind=4) opDat1MapDim
  INTEGER(kind=4) bottom,top,i1, i2
  INTEGER(kind=4) map1idx, map2idx, map3idx, map4idx

  real(8) dat1(SIMD_VEC,2)
  real(8) dat2(SIMD_VEC,2)
  real(8) dat3(SIMD_VEC,2)
  real(8) dat4(SIMD_VEC,2)

  !dir$ attributes align: 64:: dat1
  !dir$ attributes align: 64:: dat2
  !dir$ attributes align: 64:: dat3
  !dir$ attributes align: 64:: dat4

  !DIR$ ASSUME_ALIGNED opDat1Local : 64
  !DIR$ ASSUME_ALIGNED opDat5Local : 64
  !DIR$ ASSUME_ALIGNED opDat6Local : 64
  !DIR$ ASSUME_ALIGNED opDat1Map : 64
#ifdef VECTORIZE
  DO i1 = bottom, ((top-1)/SIMD_VEC)*SIMD_VEC-1, SIMD_VEC
    !DIR$ SIMD
    DO i2 = 1, SIMD_VEC, 1
      map1idx = opDat1Map(1 + (i1+i2-1) * opDat1MapDim + 0) + 1
      map2idx = opDat1Map(1 + (i1+i2-1) * opDat1MapDim + 1) + 1
      map3idx = opDat1Map(1 + (i1+i2-1) * opDat1MapDim + 2) + 1
      map4idx = opDat1Map(1 + (i1+i2-1) * opDat1MapDim + 3) + 1


      dat1(i2,1) = opDat1Local(1,map1idx)
      dat1(i2,2) = opDat1Local(2,map1idx)

      dat2(i2,1) = opDat1Local(1,map2idx)
      dat2(i2,2) = opDat1Local(2,map2idx)

      dat3(i2,1) = opDat1Local(1,map3idx)
      dat3(i2,2) = opDat1Local(2,map3idx)

      dat4(i2,1) = opDat1Local(1,map4idx)
      dat4(i2,2) = opDat1Local(2,map4idx)

    END DO
    !DIR$ SIMD
    !DIR$ FORCEINLINE
    DO i2 = 1, SIMD_VEC, 1
      ! vectorized kernel call
      CALL adt_calc_vec( &
      & dat1, &
      & dat2, &
      & dat3, &
      & dat4, &
      & opDat5Local(1,(i1+i2-1)+1), &
      & opDat6Local(1,(i1+i2-1)+1), &
      & i2)
    END DO
    DO i2 = 1, SIMD_VEC, 1

    END DO
  END DO
  ! remainder
  DO i1 = ((top-1)/SIMD_VEC)*SIMD_VEC, top-1, 1
#else
  !DIR$ FORCEINLINE
  DO i1 = bottom, top-1, 1
#endif
    map1idx = opDat1Map(1 + i1 * opDat1MapDim + 0)+1
    map2idx = opDat1Map(1 + i1 * opDat1MapDim + 1)+1
    map3idx = opDat1Map(1 + i1 * opDat1MapDim + 2)+1
    map4idx = opDat1Map(1 + i1 * opDat1MapDim + 3)+1
    ! kernel call
    CALL adt_calc( &
    & opDat1Local(1,map1idx), &
    & opDat1Local(1,map2idx), &
    & opDat1Local(1,map3idx), &
    & opDat1Local(1,map4idx), &
    & opDat5Local(1,i1+1), &
    & opDat6Local(1,i1+1) &
    & )
  END DO
END SUBROUTINE
SUBROUTINE adt_calc_host( userSubroutine, set, &
  & opArg1, &
  & opArg2, &
  & opArg3, &
  & opArg4, &
  & opArg5, &
  & opArg6 )

  IMPLICIT NONE
  character(kind=c_char,len=*), INTENT(IN) :: userSubroutine
  type ( op_set ) , INTENT(IN) :: set

  type ( op_arg ) , INTENT(IN) :: opArg1
  type ( op_arg ) , INTENT(IN) :: opArg2
  type ( op_arg ) , INTENT(IN) :: opArg3
  type ( op_arg ) , INTENT(IN) :: opArg4
  type ( op_arg ) , INTENT(IN) :: opArg5
  type ( op_arg ) , INTENT(IN) :: opArg6

  type ( op_arg ) , DIMENSION(6) :: opArgArray
  INTEGER(kind=4) :: numberOfOpDats
  REAL(kind=4) :: dataTransfer
  INTEGER(kind=4), DIMENSION(1:8) :: timeArrayStart
  INTEGER(kind=4), DIMENSION(1:8) :: timeArrayEnd
  REAL(kind=8) :: startTime
  REAL(kind=8) :: endTime
  INTEGER(kind=4) :: returnSetKernelTiming
  INTEGER(kind=4) :: n_upper
  type ( op_set_core ) , POINTER :: opSetCore

  INTEGER(kind=4), POINTER, DIMENSION(:) :: opDat1Map
  INTEGER(kind=4) :: opDat1MapDim
  real(8), POINTER, DIMENSION(:) :: opDat1Local
  INTEGER(kind=4) :: opDat1Cardinality

  real(8), POINTER, DIMENSION(:) :: opDat5Local
  INTEGER(kind=4) :: opDat5Cardinality

  real(8), POINTER, DIMENSION(:) :: opDat6Local
  INTEGER(kind=4) :: opDat6Cardinality


  INTEGER(kind=4) :: i1

  numberOfOpDats = 6

  opArgArray(1) = opArg1
  opArgArray(2) = opArg2
  opArgArray(3) = opArg3
  opArgArray(4) = opArg4
  opArgArray(5) = opArg5
  opArgArray(6) = opArg6

  returnSetKernelTiming = setKernelTime(1 , userSubroutine//C_NULL_CHAR, &
  & 0.d0, 0.00000,0.00000, 0)
  call op_timers_core(startTime)

  n_upper = op_mpi_halo_exchanges(set%setCPtr,numberOfOpDats,opArgArray)

  opSetCore => set%setPtr

  opDat1Cardinality = opArg1%dim * getSetSizeFromOpArg(opArg1)
  opDat1MapDim = getMapDimFromOpArg(opArg1)
  opDat5Cardinality = opArg5%dim * getSetSizeFromOpArg(opArg5)
  opDat6Cardinality = opArg6%dim * getSetSizeFromOpArg(opArg6)
  CALL c_f_pointer(opArg1%data,opDat1Local,(/opDat1Cardinality/))
  CALL c_f_pointer(opArg1%map_data,opDat1Map,(/opSetCore%size*opDat1MapDim/))
  CALL c_f_pointer(opArg5%data,opDat5Local,(/opDat5Cardinality/))
  CALL c_f_pointer(opArg6%data,opDat6Local,(/opDat6Cardinality/))


  CALL op_mpi_wait_all(numberOfOpDats,opArgArray)
  CALL op_wrap_adt_calc( &
  & opDat1Local, &
  & opDat5Local, &
  & opDat6Local, &
  & opDat1Map, &
  & opDat1MapDim, &
  & 0, n_upper)

  CALL op_mpi_set_dirtybit(numberOfOpDats,opArgArray)

  call op_timers_core(endTime)

  dataTransfer = 0.0
  dataTransfer = dataTransfer + opArg1%size * MIN(n_upper,getSetSizeFromOpArg(opArg1))
  dataTransfer = dataTransfer + opArg5%size * MIN(n_upper,getSetSizeFromOpArg(opArg5))
  dataTransfer = dataTransfer + opArg6%size * MIN(n_upper,getSetSizeFromOpArg(opArg6))
  dataTransfer = dataTransfer + n_upper * opDat1MapDim * 4.d0
  returnSetKernelTiming = setKernelTime(1 , userSubroutine//C_NULL_CHAR, &
  & endTime-startTime, dataTransfer, 0.00000_4, 1)

END SUBROUTINE
END MODULE