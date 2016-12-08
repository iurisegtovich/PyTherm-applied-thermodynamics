!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!ATOMS - Aplied Thermodynamics and Molecular Simulation!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!UFRJ - Federal University of Rio de Janeiro!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Developed by Rafael Pereira


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!! What does this program do? !!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    It calculates the dew curve, initiating at the pressure of 0.5 bar,
it passes through the critical point and then it calculates the bubble 
curve until the pressure reaches 0.5 bar.

    The algorithm is composed by the successive substitution method, used
to perform the initial convergence of the first dew point, and a continuation
method, in which the system is converged using the Newton's method and the 
initial guesses to the next points are calculated using the sensibilities of 
the independent variables.

    For more details on the algorithm structure and theory, search for the 
book "Thermodynamic Models: Fundamentals & Computational Aspects", 2007, 
Chapter 12 - Saturation Points and Phase Envelopes, by Michael L. Michelsen
and Jorgen M. Mollerup.


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Compiling the program !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ( intructions for compiling the program under linux with make and gfortran )

    Open a terminal in the directory in which the program is located. After
this, type in the terminal:

make

The program will be compiled and the following command lines will be shown
in the terminal:

gfortran -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -O0  
-c GaussElimination.f90 -o GaussElimination.o #compilar

gfortran -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -O0  
-c cubic_solver.f90 -o cubic_solver.o #compilar

gfortran -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -O0  
-c EOS.f90 -o EOS.o #compilar

gfortran -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -O0  
-c PhaseEnvelope.f90 -o PhaseEnvelope.o #compilar

gfortran  -shared -fPIC -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -O0  
PhaseEnvelope.o EOS.o GaussElimination.o cubic_solver.o  
-o Trace_The_Envelope.so #link library

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Running the program !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

For a standalone execution see the fortran_standalone directory
As this here is a shared library version, see an example of usage in the ipynb_caller_script_and_plotting_tool directory

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! END OF README !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
