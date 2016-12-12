# The following code should be studied on the platform provided by http://www.pythontutor.com/live.html#mode=edit

# Which graphically depicts the behavior of variables, assignments, functions and pointers, which is the major source of confusion among beginners in programming

# The code:

R_main = 8.314

T_main=273

P_main = 1e5

igV_temp = R_main*T_main/P_main

# a routine to operate on local variables
def igV_macro():
    return R_main*T_main/P_main

#tests

igV_ans = igV_macro()

T_main=298 #notice how this ovewrites the values of T and P in the 'Global frame' table

#notice how when we call the function a cell for it appears in the 'Global frame' table, and when it has served its purposed it disappears
igV_ans = igV_macro() 
#also notice how the value of the variable igV_ans is overwriten

# a function using that routine
def igV_function1(T_in,P_in): #these T_in and P_in are called dummy arguments
#that means the function will provide different results depending on the values provided for these dummy arguments, via the actual arguments
#see below the **function call** and the actual arguments**
    T_local = T_in #notice how this ovewrites the values of T and P in the 'Global frame' table
    P_local = P_in
    
    T_main= T_in #this does not overwrite T_main, this creates a new variable instead
    P_main= P_in #this does not overwrite T_main, this creates a new variable instead
    
    igV_ans = igV_macro() #notice how the stack of functions call is formed in the 'Global frame' table
    return igV_ans

P_test=1e5

T_test=273
ans_igV=igV_function1(T_in=T_test,P_in=P_test)

T_test=298    
ans_igV=igV_function1(T_in=T_test,P_in=P_test)

def igV_function2(T_in,P_in):
    igV_temp = R_main*T_in/P_in
    return igV_temp

#see it work
P_test = 1e5

T_test=273
igV_ans = igV_function2(T_in=T_test, P_in=P_test)

T_test=293
igV_ans = igV_function2(T_in=T_test, P_in=P_test)


# dont creat function pointers accidentally

igV_function_ptr = igV_macro #this does not evaluate the routine, it creates an alias
#see in the 'Global frame' how two arrows point two different names to the same actual routine

igV_ans=igV_function_ptr() #this will evaluate that routine calling via the alias name

# pointer to functions are used in callbacks

#define a function that works with another function
#that is frequently used in numerical methods

def trapez_function(f,inf,sup):
    ret = (f(inf)+f(sup)) / 2
    return ret
    
def line_function(x): #a line function
    return 5*x+1
    
trapez_ans = trapez_function(line_function,0,1)

### v2

R_main = 8.314

T_main=273

P_main = 1e5

igV_temp = R_main*T_main/P_main

# a routine to operate on local variables
def igV_macro():
    return R_main*T_main/P_main

#tests

igV_ans = igV_macro()

T_main=298 #notice how this ovewrites the values of T and P in the 'Global frame' table

#notice how when we call the function a cell for it appears in the 'Global frame' table, and when it has served its purposed it disappears
igV_ans = igV_macro() 
#also notice how the value of the variable igV_ans is overwriten

# a function using that routine
def igV_function1(T_in,P_in): #these T_in and P_in are called dummy arguments
#that means the function will provide different results depending on the values provided for these dummy arguments, via the actual arguments
#see below the **function call** and the actual arguments**
    T_local = T_in #notice how this ovewrites the values of T and P in the 'Global frame' table
    P_local = P_in
    
    T_main= T_in #this does not overwrite T_main, this creates a new variable instead
    P_main= P_in #this does not overwrite T_main, this creates a new variable instead
    
    igV_ans = igV_macro() #notice how the stack of functions call is formed in the 'Global frame' table
    return igV_ans

P_test=1e5

T_test=273
ans_igV=igV_function1(T_in=T_test,P_in=P_test)

T_test=298    
ans_igV=igV_function1(T_in=T_test,P_in=P_test)

def igV_function2(T_in,P_in):
    igV_temp = R_main*T_in/P_in
    return igV_temp

#see it work
P_test = 1e5

T_test=273
igV_ans = igV_function2(T_in=T_test, P_in=P_test)

T_test=293
igV_ans = igV_function2(T_in=T_test, P_in=P_test)


# dont creat function pointers accidentally

igV_function_ptr = igV_macro #this does not evaluate the routine, it creates an alias
#see in the 'Global frame' how two arrows point two different names to the same actual routine

igV_ans=igV_function_ptr() #this will evaluate that routine calling via the alias name

# pointer to functions are used in callbacks

#define a function that works with another function
#that is frequently used in numerical methods

def trapez_function(f,inf,sup):
    ret = (f(inf)+f(sup)) / 2
    return ret
    
def line_function(x): #a line function
    return 5*x+1
    
trapez_ans = trapez_function(line_function,0,1)

#lists

list_main_1 = (1,2,3)
list_main_2 = (4,5,6)

first_element_of_list_main_1 = list_main_1[0]

ptr_to_two_lists = (list_main_1,list_main_2)

list_of_copies_of_lists = (list(list_main_1),list(list_main_2))

first_element_of_first_list_of_list_of_copies_of_lists = list_of_copies_of_lists[0][0]