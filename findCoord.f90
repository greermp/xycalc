program geomFunctions
    use, intrinsic :: iso_fortran_env, only: dp=>real64
    use geomMod
    implicit none

    character(10)   :: filename = 'output.txt'
    integer         :: calcX, calcY, degrees, range,io
    real(DP)        :: theta
    io=10
    open(newunit=io, file=filename, status="old", action="write")
    write (io,*) "Dist","Degrees","X","Y"
    outerloop: do range = 10, 250, 50
        innerOne : do degrees = 0, 30, 10
        theta = (degrees*Pi/180)
            call getXY(theta, range, calcX, calcY)
            print *, "Range: ", range, " Degrees: ",degrees, " X: ", calcX, " Y", calcY
            write (io,*) range, degrees, calcX, calcY
        !     ! print *, calcX, ",", calcY
        end do innerOne

        innerTwo : do degrees = 330, 350, 10
            theta = (degrees*Pi/180)
                call getXY(theta, range, calcX, calcY)
                print *, "Range: ", range, " Degrees: ",degrees, " X: ", calcX, " Y", calcY
                write (io,*) range, degrees, calcX, calcY
            !     ! print *, calcX, ",", calcY
            end do innerTwo
    end do outerloop



    close(io)
end program