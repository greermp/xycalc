module geomMod
    use, intrinsic :: iso_fortran_env, only: dp=>real64
    REAL(DP), PARAMETER :: Pi = 4.D0*DATAN(1.D0)
contains

subroutine printMe(me)
    character(10), intent(in) :: me
     print *, me
end subroutine printMe
    
! Calculate X Y coordinates for a given theta and range from origin (assumed to be 0,0)
subroutine getXY(theta, range, calcX, calcY)
    implicit none
    integer, intent(in)     :: range
    real(DP), intent(in)    :: theta
    integer, intent(out)    ::  calcX, calcY

    calcX = range * (cos(theta))
    calcY = range * (sin(theta))
end subroutine getXY

end module geomMod