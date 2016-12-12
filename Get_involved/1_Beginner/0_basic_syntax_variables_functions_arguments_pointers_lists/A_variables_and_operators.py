# The following code should be studied on the platform provided by http://www.pythontutor.com/live.html#mode=edit
# This platform graphically depicts the behavior of variables, assignments, functions and pointers,
# which is the major source of confusion among beginners in programming

# === Lecture zero, part A ========================================================================================================================================================================

# --- Assignments -------------------------------------------------------------------------------------------------------------------------------------------------------------

R = 8.314

# Read as " The value "8.314" is assigned (=) to the variable "R". "

# Note the 'global frame' table

# --- print -------------------------------------------------------------------------------------------------------------------------------------------------------------

# print the value assigned to R

print(R)

# Note the 'print output' field

T = 273
# Note a new line on the 'global frame' table

P = 1e5 # 1e5 means 1 x 10^5
# Note a new line on the 'global frame' table

# assignment to the result of an operation

# --- Operators -------------------------------------------------------------------------------------------------------------------------------------------------------------

V = R * T / P # "*" means multiplication, "/" means division
# Note a new line on the 'global frame' table

# print the values assigned to T, P and V ( separate each object with commas )
print(T,P,V)
# Note the 'print output' field

# === Notes ========================================================================================================================================================================

# --- re assignment ----------------------------------------------------------------------------------------------------------------------------------------------------------------

# assigns the value "298" to the variable "T" 

T = 298
# Note the value on the second column in the line on the 'global frame' table corresponding to the variable T now changes 

print(T,P,V) # V does not change, the calculation we performed before was a one time assignment, not a function
# Note the 'print output' field

V = R * T / P # perform the calculation again

print(T,P,V) # now V did change
# Note the 'print output' field

# we can automate that with functions -- see Lecture zero, part B

# --- case sensibility --------------------------------------------------------------------------------------------------------------------------------------------------------

t = 373
# Note a new line on the 'global frame' table

print(t,T) #case sensibility makes t and T two different variables
# Note the 'print output' field

# --- memory independence --------------------------------------------------------------------------------------------------------------------------------------------------------

# say
T1 = 273 # assign the value 273 to T1
T2 = T1 # assign the value of T1 to T2
print(T1,T2) # the value assigned to both of them is 273

T2 += 25 # increment the value of T2 by 25
print(T1,T2) # the value assigned to T1 is still 273, the value assigned to T2 is 273 + 25, therefore 298
