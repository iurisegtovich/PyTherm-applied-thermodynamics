# The following code should be studied on the platform provided by http://www.pythontutor.com/live.html#mode=edit
# This platform graphically depicts the behavior of variables, assignments, functions and pointers,
# which is the major source of confusion among beginners in programming

# === Lecture zero, part B ========================================================================================================================================================================

# --- Remember from part A -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# we will define R as we did before, however we will name it main_R so we will have clear distinctions between the different scopes of our code

# instead of
#R = 8.314
# we will do
main_R = 8.314

# but instead of

#V = R * T / P # "*" means multiplication, "/" means division

# --- macro-like functions -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# we can functions depending on current values of local variables main_T, main_P, main_R

def macro_V():
	return main_R * main_T / main_P

# and use it like this:	

main_T = 273
main_P = 1e5
print(macro_V()) #note the empty parentheses that indicates the macro-like function should be evaluated based on current values of any variables it depends on - in this case, main_R, main_T and main_P -.

main_T = 298
main_P = 1e5
print(macro_V())

main_T = 373
main_P = 1e5
print(macro_V())

# --- functions of dummy arguments -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
# and we can do functions of arbitrary dummy_T and dummy_P, and also depending on the current value of main_R
def function_V(dummy_T,dummy_P):
	return main_R * dummy_T / dummy_P

# now we can use this function as follows:

print(function_V(dummy_T=273,dummy_P=1e5)) # where the actual arguments - teh values 273 and 1e5 - take the places of the dummy arguments - dummy_T and dummy_P, respectively -.
print(function_V(dummy_T=298,dummy_P=1e5))
print(function_V(dummy_T=373,dummy_P=1e5))

# functionizing the calculation of volume comes in hand when we want to make recursive usage of it --  see Lecture zero, part C
