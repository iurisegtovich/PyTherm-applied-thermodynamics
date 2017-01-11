# The following code should be studied on the platform provided by http://www.pythontutor.com/live.html#mode=edit
# This platform graphically depicts the behavior of variables, assignments, functions and pointers,
# which is the major source of confusion among beginners in programming

# === Lecture zero, part F ========================================================================================================================================================================

# --- Remember from part E -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

main_R = 8.314

def function_P_sat(dummy_T): # Let's  use this approximate correlation for water saturation pressure
	return 1e5 * ( 10**( 5.40221 - ( 1838.675 / ( dummy_T - 31.737 ) ) ) )
	
main_Rho_sat = 1000 # kg / m^3 
main_mol_weight = 18 # g / mol

def function_V(dummy_T,dummy_P): # now if a volume at pressure lower than saturation pressure is inquired, a ideal gas phase volume is provided
	if (dummy_P) < function_P_sat(dummy_T):
		return main_R * dummy_T / dummy_P
	else:  # and if a volume at pressure higher than saturation pressure is inquired, a liquid phase volume is provided
		return main_mol_weight / ( main_Rho_sat * 1000 )

main_P=1e5

list_T = [273, 298, 373, 500, 600]

# --- the callback function -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

def function_trapez(f,inf,sup): # this function takes as arguments a pointer-to-function "f" and two values "inf" and "sup" and calculates a 1-trapeze approximate integral
    return (f(sup)-f(inf)) / 2 # this is called a call back because the function_trapeze will the "call back" the function f, then providing the values inf and sup in pace of its dummy_arguments

# we can, on some applications, use integrals like this to calculate work in an open flow system (integrate V dP)

# e.g. calculate work in depressurization of ideal gas between .9 and .8 of the substances saturation pressure at 298 K


# define a function_V to run at constant T of 298

def function_V_298(dummy_P): #sets dummy_T to 298, passes on dummy_P
	return function_V(dummy_T=298,dummy_P=dummy_P)


# define the lower and upper limits of integration

Pinf=0.9*function_P_sat(298)
Psup=0.8*function_P_sat(298) #small perturbation

# pass the function and limits to the approximate "integrator"

print(function_trapez(function_V_298,Pinf,Psup)) #note no empty parentheses after function_V_298, that means pass the pointer, do not evaluate now