# PxT_L-V_Phase_Envelope_given_z


## What does this program do?

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

* See the standalone program writen in fortran in fortran_standalone
  * See build and running instructions there

* See a shared library based on that program in fortran_library
  * See build instructions there
  * See usage case in the ipynb inthe caller script directory below:

* See a caller script in ipynb and integrated plotting tools in ipynb_caller_script_and_plotting_tool
