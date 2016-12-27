# The following code should be studied on the platform provided by http://www.pythontutor.com/live.html#mode=edit
# This platform graphically depicts the behavior of variables, assignments, functions and pointers,
# which is the major source of confusion among beginners in programming

# === Lecture zero, part D ========================================================================================================================================================================

# --- Remember from part C -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

main_R = 8.314

def function_V(dummy_T,dummy_P):
	return main_R * dummy_T / dummy_P

main_P=1e5

list_T = [273, 298, 373]

# --- for loop -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

for i in range(3): # the function range 3 says i should loop 3 times with index starting from zero and increasing in 1 after each iteration
	print(function_V(dummy_T=list_T[i],dummy_P=main_P))

# we might want to keep track of the results in each iteration and take decisions -- for that see "if" syntax in Lecture zero, part E