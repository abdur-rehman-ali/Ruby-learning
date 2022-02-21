# If the user will define a method with def keyword only inside a module i.e. 
# def method_name then it will consider as an instance method. 
# A user cannot access instance method directly with the use of the dot operator as he cannot make the instance of the module.

# To access the instance method defined inside the module, 
# the user has to include the module inside a class and then use the class instance to access that method. 
# Below example illustrate this concept clearly.

# The user can use the module inside the class by using include keyword. In this case, the module works like a namespace.

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
 
    def good_bye
        puts "Good bye !!!"
    end
end

class Meet_everyone
    include Greeting
end

obj = Meet_everyone.new

Greeting.welcome

# access instance method of module 
obj.good_bye

