
# 5 variables type in ruby 
# 1)Global variables 
# 2)instance variable 
# 3)class variable 
# 4)local varibles 
# 5)constant variables 


# 1)Global variables 

# Declaring global variable
$global_value = 121

# updating value of global variable 
$global_value = 11


class Class1
    def print_global
        puts "Value of global variable is #$global_value"
    end
end

class Class2
    def print_global
        puts "Value of global variable is #{$global_value}"
    end
end

inst1 = Class1.new
inst1.print_global

inst2=Class2.new
inst2.print_global
