# The following code should be studied on the platform provided by http://www.pythontutor.com/live.html#mode=edit
# This platform graphically depicts the behavior of variables, assignments, functions and pointers,
# which is the major source of confusion among beginners in programming

# === Lecture zero, part C ========================================================================================================================================================================

# --- Remember from part B -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

main_R = 8.314

def function_V(dummy_T,dummy_P):
	return main_R * dummy_T / dummy_P

# --- lists -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# as before, this is a scalar value
main_P=1e5


# now this is a list
list_T = [273, 298, 373]

# we can print each element in the list by its index, starting from zero

print(list_T[0])
print(list_T[1])
print(list_T[2])

# --- using lists in function calls -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# we can define the values in the list at one point, as we did few lines ago

# and then call the function using each value from the list by its index

i=0 #assing "0" to 'i'
print(function_V(dummy_T=list_T[i],dummy_P=main_P)) # call function_V with dummy_T being taken for the value at list_T[0], therefore, 273

i=1
print(function_V(dummy_T=list_T[i],dummy_P=main_P))

i=2
print(function_V(dummy_T=list_T[i],dummy_P=main_P))

# now we might automate the recursion with "for" syntax --  see Lecture zero, part D

# --- concatenations -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

list_T += [500] # this will concatenate a value of "500" as a last element in the list

print(list_T)

# --- pointers -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

list_T1 = list_T # with lists, "=" does not make an assignment of values, but rather an assignment of pointers to memory references

list_T1 += [600] #this will append a value of "600" as a last element in the list which is referenced both by the name list_T and by the name list_T1

print(list_T)
print(list_T1)

list_T1[3] += 100 # this increments the value of the element with index 3 (that will be the fourth) by 100 of the list which is referenced both by the name list_T and by the name list_T1

print(list_T)
print(list_T1)