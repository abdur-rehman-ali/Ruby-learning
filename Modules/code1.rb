# Module 
# Module is collection of constants, methods and class variable 


# Some important points about modules 
# 1. You can't inherit modules 
# 2. You can't create subclass of modules 
# 3. Objects can't be created from modules 
# 4. Module name starts with capital letter 
# 5. To define module method user have to prefix the name of the module with the method name while defining the method. 
#    The benefit of defining module method is that user can call this method by simply using the name of module 
#    and dot operator as shown in below example
# 6. You can access module constant with double colon (::) 

module Greeting

    # Module constant
    Count = 2

    # declaring methods of module 
    def Greeting.say_hello
        puts "Hello "
    end

    def Greeting.welcome
        puts "Welcome!!!"
    end

    # Can't declare method like this 
    # AS it is instance method which can be access when we create instance
    # But we don't create instance of module 
    def good_bye
        puts "Good bye !!!"
    end
end

# accessing module constant value 
puts Greeting::Count

# calling methods of modules 
Greeting.say_hello
Greeting.welcome

# calling instance method (Can't be called like this)
# Greeting.good_bye