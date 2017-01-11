# The following code should be studied on the platform provided by http://www.pythontutor.com/live.html#mode=edit
# This platform graphically depicts the behavior of variables, assignments, functions and pointers,
# which is the major source of confusion among beginners in programming

# === Lecture zero, part E ========================================================================================================================================================================

# --- Remember from part D -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

main_R = 8.314

# --- just another function -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

def function_P_sat(dummy_T): # Let's  use this approximate correlation for water saturation pressure
	return 1e5 * ( 10**( 5.40221 - ( 1838.675 / ( dummy_T - 31.737 ) ) ) )
	
main_Rho_sat = 1000 # kg / m^3 
main_mol_weight = 18 # g / mol

# --- fix function_V with an "if" syntax -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

def function_V(dummy_T,dummy_P): # now if a volume at pressure lower than saturation pressure is inquired, a ideal gas phase volume is provided
	if (dummy_P) < function_P_sat(dummy_T):
		return main_R * dummy_T / dummy_P
	else:  # and if a volume at pressure higher than saturation pressure is inquired, a liquid phase volume is provided
		return main_mol_weight / ( main_Rho_sat * 1000 )

main_P=1e5

list_T = [273, 298, 373, 500, 600]

# --- for loop -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

for i in range(3): # the function range 3 says i should loop 3 times with index starting from zero and increasing in 1 after each iteration
	print(function_V(dummy_T=list_T[i],dummy_P=main_P))