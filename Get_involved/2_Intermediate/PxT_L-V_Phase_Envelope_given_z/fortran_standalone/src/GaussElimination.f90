!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!ATOMS - Aplied Thermodynamics and Molecular Simulation!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!UFRJ - Federal University of Rio de Janeiro!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Developed by Rafael Pereira


module GaussianElimination
  
  implicit none
  
  contains
  
  subroutine GaussElimination(A, b, X, Nvar)
    
    !Arguments
    real(8) :: A(:), b(:), X(:)
    integer :: Nvar
    !"A" is the matrix with the coefficients of the system of equations to be solved. It has the shape of a vector (A[Nvar*Nvar]).
    !"b" is the vector with the results of each equation of the system (b[Nvar]).
    !"X" is the vector of independent variables. The results will be stored in this vector (X[Nvar]).
    
    !local
    real(8) :: m, A_GE(Nvar*Nvar), Aaux(Nvar), Xaux     
    integer :: i, j, k, pivot    
    
    
    !Copying "b" to "X" and "A" to "A_GE".
    do i = 1, Nvar    
      X(i) = b(i)
      do j = 1, Nvar
        A_GE((i-1)*Nvar+j) = A((i-1)*Nvar+j)
      enddo
    enddo
    
    !Generating upper triangular matrix/////////////////////////////////////////
    do i = 1, (Nvar-1)
  
      !Pivoting
      pivot = i
      
      do j = (i+1), Nvar
        if (dabs(A_GE((j-1)*Nvar+i)) .gt. dabs(A_GE((pivot-1)*Nvar+i))) then
          pivot = j
        else
          pivot = pivot
        endif
      enddo
        
      if(pivot.ne.i) then
        do j = 1, Nvar
          Aaux(j) = A_GE((i-1)*Nvar+j)
          A_GE((i-1)*Nvar+j) = A_GE((pivot-1)*Nvar+j)
          A_GE((pivot-1)*Nvar+j) = Aaux(j)
        enddo
        Xaux = X(i)
        X(i) = X(pivot)
        X(pivot) = Xaux            
      endif
        
        !Excluding variable X[i] from, the Nvar-i remaining equations of the system.
      do j = (i+1), Nvar
        m = A_GE((j-1)*Nvar+i)/A_GE((i-1)*Nvar+i)
        do k = 1, Nvar
          A_GE((j-1)*Nvar+k) = A_GE((j-1)*Nvar+k) - m*A_GE((i-1)*Nvar+k)
        enddo
        X(j) = X(j) - m*X(i)
      enddo
        
    enddo
    !////////////////////////////////////////////////////////////////////////////
    
    
    !Generating diagonal matrix matrix/////////////////////////////////////////
    do i = (Nvar-1+1), 2, -1
      do j = (i-1), 1, -1
        m = A_GE((j-1)*Nvar+i)/A_GE((i-1)*Nvar+i)
        do k = 1, Nvar
          A_GE((j-1)*Nvar+k) = A_GE((j-1)*Nvar+k) - m*A_GE((i-1)*Nvar+k)
        enddo
        X(j) = X(j) - m*X(i)
      enddo
    enddo
    !////////////////////////////////////////////////////////////////////////////
    
    
    !Normalizing main diagonal/////////////////////////////////////////////////
    do i = 1, Nvar
      m = A_GE(i+Nvar*(i-1))
      do j = 1, Nvar
        A_GE(Nvar*(i-1)+j) = A_GE(Nvar*(i-1)+j)/m
      enddo
      X(i) = X(i)/m
    enddo
    !////////////////////////////////////////////////////////////////////////////
    
  end subroutine

end module


