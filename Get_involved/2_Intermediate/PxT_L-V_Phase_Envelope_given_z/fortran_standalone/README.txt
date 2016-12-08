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

gfortran -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -O0  
PhaseEnvelope.o EOS.o GaussElimination.o cubic_solver.o  
-o Trace_The_Envelope.elf #linkar


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Running the program !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    Before running the program, the user should write the input archive by 
following the steps given below:

1) Open the archive "input.txt";

2) Write on its first line the number of components of system that 
will be simulated;

3) On the next line, write the composition, the critical temperature,
the critical pressure and the acentric factor of the first component of
the system;

4) Jump one line and write the composition, the critical temperature,
the critical pressure and the acentric factor of the next component;

5) This procedure must be followed for all the components of the system.


    For a two component system composed by n-hexane and n-nonane, the input
archive looks like:

2
0.3 507.5 30.1 0.299
0.7 594.6 22.9 0.445

    After the input archive is correctly filled, open a terminal in the
directory in which the program is lacated and type the command:

./Trace_The_Envelope.elf


As long as the program runs, it will show some output data in the
terminal, so that the user can track the results in real time, and
will also create an output archive.


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!! Reading and interpreting output archive !!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    The output archive is writen in the csv format, i.e. it can be readly
opened using MS Excel or LibreOffice Calc.

    The output archive contains the nature of the incipient phase on the first
column, the pressure on the second column, the temperature on the third column
and the composition of the incipient phase on the next columns.

    For a example of already opened output archive and a 'T x P' plot, try
openning the archive "plot_template.xls".


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! END OF README !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
