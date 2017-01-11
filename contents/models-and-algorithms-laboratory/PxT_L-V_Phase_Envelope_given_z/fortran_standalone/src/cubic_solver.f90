!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!ATOMS - Aplied Thermodynamics and Molecular Simulation!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!UFRJ - Federal University of Rio de Janeiro!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


module cubic_solver
    
    implicit none
    
    contains
    
    !Root Calculator of Cubic Equations With Real Coefficients
    subroutine cubic (A1,B1,C1,D1,X1,X2,X3)

       !Arguments
       real(8) :: A1, B1, C1, D1 !Cubic Equation Coefficients (A1*Z**3+B1*Z**2+C1*Z+D1=0)
       real(8) :: X1, X2, X3 !Roots

       !Local
       real(8) :: A, B, ARG1, ARG2, FI, P, Q, R
       real(8), parameter :: PI = 3.1415926535d0

        if(A1 .ne. 1.0d0) then
            A1=A1/A1
            B1=B1/A1
            C1=C1/A1
            D1=D1/A1
        endif

        P = (3.0d0*C1 - B1**2.0d0)/3.0d0
        Q = (27.0d0*D1 - 9.0d0*B1*C1 + 2.0d0*B1**3.0d0)/27.0d0
        R = (P/3.0d0)**3 + (Q/2.0d0)**2.0d0
        
        !Discriminant greater than zero: Only One Real Root
        if(R .gt. 1.0d-10) then
            ARG1 = -Q/2.0d0 + R**0.5d0
            ARG2 = -Q/2.0d0 - R**0.5d0

            if(ARG1 .lt. 0.0d0) then
               A = -((-ARG1)**(1.0d0/3.0d0))
            else
               A = (ARG1)**(1.0d0/3.0d0)
            endif

            if(ARG2 .lt. 0.0d0) then
               B = -((-ARG2)**(1.0d0/3.0d0))
            else
               B = (ARG2)**(1.0d0/3.0d0)
            endif

            X1 = A + B - B1/3.0d0
            X2 = 0.0d0
            X3 = 0.0d0

        !Discriminant Equal to Zero: Three Real Roots (At Least Two Of Them Are Equal)
        elseif(dabs(R) .le. 1.0d-10) then
            if(Q .lt. 0.0d0 ) then
               A = (-Q/2.D0)**(1.0d0/3.0d0)
               B = A
            else
               A = -((Q/2.0d0)**(1.0d0/3.0d0))
               B = A
            endif

            X1 = A + B - B1/3.0d0
            X2 = -0.5d0*(A + B) - B1/3.0d0
            X3 = X2
            
        !Discriminant Lower Than Zero: Three Different Real Roots
        elseif(R .lt. 0.0d0) then
            FI = acos(((Q**2.0d0/4.0d0)/(-P**3.0d0/27.0d0))**0.5d0)

            X1 = 2.0d0*((-P/3.0d0)**0.5d0)*cos(FI/3.0d0) - B1/3.0d0
            X2 = 2.0d0*((-P/3.0d0)**0.5d0)*cos((FI/3.0d0) + (2.0d0/3.0d0)*PI) - B1/3.0d0
            X3 = 2.0d0*((-P/3.0d0)**0.5d0)*cos((FI/3.0d0) + (4.0d0/3.0d0)*PI) - B1/3.0d0

            if(Q .gt. 0.0d0) then
               X1 = -2.0d0*((-P/3.D0)**0.5d0)*cos(FI/3.0d0) - B1/3.0d0
               X2 = -2.0d0*((-P/3.D0)**0.5d0)*cos((FI/3.0d0) + (2.0d0/3.0d0)*PI) - B1/3.0d0
               X3 = -2.0d0*((-P/3.D0)**0.5d0)*cos((FI/3.0d0) + (4.0d0/3.0d0)*PI) - B1/3.0d0
            endif
        endif

    end subroutine
      
end module


