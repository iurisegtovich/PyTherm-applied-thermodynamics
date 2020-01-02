module mPitzer_w_NaCl

use iso_fortran_env, ONLY: REAL64
  implicit none
contains

    SUBROUTINE calc_aH2O_Pitzer_w_NaCl(mNaCl,T_K,aH2O)

    !Uses the Pitzer equations to calculate the activity coefficients of Ca and SO4
    !and the activity of H2O in Ca-Na-Cl-SO4 solutions. Illustrates the use of the Pitzer equations.
    !Equation numbers from Harvie & Weare (1980) are indicated by HW().

      IMPLICIT none

      real(8),INTENT(in) :: mNaCl !molalidade
      real(8) :: mNa !molalidade
      real(8) :: mCl !molalidade
      real(8),INTENT(out):: aH2O 
      real(8) :: v, w, y, f_gamma, Z, F, IS, ISp 
      real(8) :: term1
      real(8) :: terma, termb
      real(8) :: CNaCl
      real(8) :: osmotic, sum_m 
      !parameter data are from Harvier & Weare (1980). 
!      real(8),PARAMETER :: Aphi = 0.392
      real(8), parameter :: b = 1.2 
      real(8) :: Aphi !função de Temperature Ref{prof. Amaro, pers. comm.}
      real(8) :: T_K, PI, Na, ds, ee, k, eer
      real(8),PARAMETER :: alpha = 2.0, alpha1 = 1.4, alpha2 = 12.0 

!      real(8),PARAMETER :: CphiNaCl=0.00923581
!      real(8),DIMENSION(3),PARAMETER :: BNaCl = [ 0.118903, 0.0931902, 0. ] 
      
      real(8),PARAMETER :: CphiNaCl=0.00127
      real(8),DIMENSION(3),PARAMETER :: BNaCl = [ 0.07650, 0.2664, 0.0 ] 
      
      
      mNa = mNaCl
      mCl = mNaCl

      !EXTERNAL mixing 

      !SOME PRELIMINARIES: 
      !=================== 

      !sum of all m terms 
      sum_m = mNa+mCl

      !Ionic strength functions 
      IS = (mNa+mCl)/2 
      ISp = sqrt(IS) 

      !some commonly used parameters 
      v = alpha *ISp 
      w = alpha1*ISp 
      y = alpha2*ISp 
      Z = mNa+mCl

      !convert Cphi to C
      CNaCl = CphiNaCl /2 


      IS  = (2.d0*ABS(mNaCl))/2.d0   !Cálculo de força iônica a partir da molalidade

      !D-H TERM: 
      !========= 

      term1 = mNa*mCl *(BNaCl(2) *gp(v)/IS )

      PI = 3.1415927d0 !ATAN(1.d4)
      Na = 6.0232d23
      ds = -0.0004*T_K + 1.1188 !kg.dm^-3
      ee = 4.8029d-10
      k  = 1.38045d-16
      eer = 305.7 * dexp(-dexp(-12.741d0 + 0.01875d0*T_K) - T_K/219) !Ref {Zemaitis pg 644}
      Aphi = 1.d0/3.d0 *(2.d0*PI*Na*ds/1000d0)**0.5d0*(ee/(eer*k*T_K)**0.5d0)**3.d0

      f_gamma = -Aphi*((ISp/(1+b*ISp)) + (2/b)*(log(1+b*ISp)))

      F = f_gamma + term1

      !OSMOTIC COEFFICIENT: 
      !==================== 

      terma = -Aphi*IS**(1.5)/(1+b*ISp) 

      termb = mNa*mCl * (BNaCl(1) + BNaCl(2) *exp(-v) + Z*CNaCl )

      osmotic = 1+(2/sum_m)*(terma + termb)

      aH2O = exp(-osmotic*sum_m/55.51) 

    CONTAINS 

      function g(x) 
        IMPLICIT none 
        real(8) :: g,x 
        g = 2*(1-(1+x)*exp(-x))/x**2 
      END function g 

      function gp(x) 
        IMPLICIT none 
        real(8) :: gp,x 
        gp = -2*(1-(1+x+x**2/2)*exp(-x))/x**2 
      END function gp 

    END SUBROUTINE calc_aH2O_Pitzer_w_NaCl

  end module mPitzer_w_NaCl
