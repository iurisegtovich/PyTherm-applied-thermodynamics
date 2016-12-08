!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!ATOMS - Aplied Thermodynamics and Molecular Simulation!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!UFRJ - Federal University of Rio de Janeiro!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Developed by Rafael Pereira


module EOS
  
  use cubic_solver
  
  implicit none
  
  contains
  
  !CALCULATION OF PENG-ROBINSON EoS PARAMETER "a"===========================================================================================
  subroutine EoS_param(acentric, Tc, ac, a, T, comp)

    !Arguments
    real(8) :: acentric(:), Tc(:), ac(:), a(:), T
    integer :: comp
    
    !Local
    real(8) :: alfa, K
    integer :: i
    
    do i = 1 , comp
        if(acentric(i) .le. 0.2d0) then
          K = 0.3764d0 + (1.5423d0 - 0.2699d0*acentric(i))*acentric(i)
        else
          K = 0.3796d0 + (1.4850d0 + (-0.1644d0 + 0.01667d0*acentric(i))*acentric(i))*acentric(i)
        endif
        alfa = (1.d0 + K*(1.d0 - (T/Tc(i))**0.5d0))*(1.d0 + K*(1.d0 - (T/Tc(i))**0.5d0))
        
        a(i) = alfa*ac(i)
    enddo
    
  end subroutine
  !=========================================================================================================================================   
  
  
  !VAN DER WAALS ONE FLUID MIXING RULE======================================================================================================
  subroutine VdW1fMIX(comp, a, b, kij, MoleFrac, amix, bmix) 
    
    !Arguments
    real(8) :: a(:), b(:), kij(:,:), MoleFrac(:), amix, bmix
    integer :: comp
    
    !Local
    real(8) :: norm, MoleFracAux(comp)
    integer :: i, j
    
    !Normalizing mole fractions
    norm = 0.0d0  
    do i = 1, comp
      norm = norm + MoleFrac(i)
    enddo
    
    do i = 1, comp
      MoleFracAux(i) = MoleFrac(i)/norm
    enddo
    
    bmix = 0.0d0
    amix = 0.0d0
    do i = 1, comp
      !Parameter "b" mixing rule
      bmix = bmix + MoleFracAux(i)*b(i)
      !Parameter "a" mixing rule
      do j = 1, comp        
        amix = amix + MoleFracAux(i)*MoleFracAux(j)*((a(i)*a(j))**0.5d0)*(1.d0 - kij(i,j))
      enddo
    enddo
    
  end subroutine
  !==========================================================================================================================================
  
  
  !SOLVING EoS FOR THE VOLUME================================================================================================================
  subroutine EoS_Volume(P, T, bmix, amix, Volume, root)
    
    !Arguments
    real(8) :: P, T, bmix, amix, Volume
    integer :: root
    
    !Local
    integer :: i
    real(8) :: R, sigma_eos, epsilon_eos, Vol(3), aux, coefCubic(4)
    
!    //////////////////////////
!   //root = 0 --> Vapor//////
!  ///root = 1 --> Liquid////
! //////////////////////////
    
    R = 83.14462175d0
    sigma_eos = 1.0d0 + 2.0d0**0.5d0 !PR
    epsilon_eos = 1.0d0 - 2.0d0**0.5d0 !PR
    
    !Initializing volume vector
    Vol(1) = 0.0d0
    Vol(2) = 0.0d0
    Vol(3) = 0.0d0
    
    !Defining auxiliary variable
    aux = P/(R*T)
    
    !Cubic equation coefficients
    coefCubic(1) = 1.0d0
    coefCubic(2) = (sigma_eos + epsilon_eos - 1.0d0)*bmix - 1.0d0/aux
    coefCubic(3) = sigma_eos*epsilon_eos*bmix**2.0d0 - (1.0d0/aux + bmix)*(sigma_eos + epsilon_eos)*bmix + amix/P
    coefCubic(4) = -(1.0d0/aux + bmix)*sigma_eos*epsilon_eos*bmix**2.0d0 - bmix*amix/P
        
    !Cubic equation solver
    call cubic(coefCubic(1),coefCubic(2),coefCubic(3),coefCubic(4),Vol(1),Vol(2),Vol(3))
    
    
    do i = 1 , 3
        if (Vol(i) .le. bmix) then
            if(root .eq. 1) then
                Vol(i) = huge(1.0d0)
            else 
                Vol(i) = tiny(1.0d0)
            endif
        endif
    enddo
    
    if (root .eq. 1) then
        Volume = min(Vol(1),Vol(2),Vol(3))
    else
        Volume = max(Vol(1),Vol(2),Vol(3))
    endif
    
  end subroutine
  !==========================================================================================================================================
  
  
  !Calculation of fugacity coefficient of component "index"====================================================================================
  subroutine fugacity(comp, T, P, a, b, amix, bmix, FugCoef, Volume, MoleFrac, kij, index)
   
    !Arguments
    real(8) :: T, P, a(:), b(:), amix, bmix, FugCoef, Volume, MoleFrac(:), kij(:)
    integer :: index, comp
    
    !Local
    real(8) :: aux, MoleFracAux(comp), sigma_eos, epsilon_eos, da_dx, Z, R !R = cm³.bar/(mol.K)
    integer :: i
    
    
    R = 83.14462175d0
    sigma_eos = 1.0d0 + 2.0d0**0.5d0 !PR
    epsilon_eos = 1.0d0 - 2.0d0**0.5d0 !PR
    
    !Normalizing mole fractions
    aux = 0.0d0  
    do i = 1, comp
      aux = aux + MoleFrac(i)
    enddo
    
    do i = 1, comp
      MoleFracAux(i) = MoleFrac(i)/aux
    enddo
    
    !Defining auxiliary variable
    aux = P/(R*T)
    
    !Compressibility factor
    Z = Volume*aux
    
    !Deritivative of amix with respect to MoleFrac(index)
    da_dx = 0.0d0
    do i = 1, comp
      da_dx = da_dx + 2.0d0*MoleFracAux(i)*((a(index)*a(i))**0.5d0)*(1.0d0 - kij(i))
    enddo
    
    !ln(Fugacity coefficient)
    FugCoef = (b(index)/bmix)*(Z-1.0d0)-dlog((Volume-bmix)*aux)-amix/(bmix*R*T*(epsilon_eos-sigma_eos))*(da_dx/amix-b(index)/bmix)*&
        dlog((Volume+epsilon_eos*bmix)/(Volume+sigma_eos*bmix))
            
  end subroutine
  !==========================================================================================================================================

end module EOS
