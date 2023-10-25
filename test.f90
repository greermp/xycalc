program test
    implicit none
    
integer :: io, a=1,b=2
open(newunit=io, file="log.txt", status="old", action="write")
write(io, *) a, b
close(io)

end program test
