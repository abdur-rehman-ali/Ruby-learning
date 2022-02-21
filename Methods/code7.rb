 

#  undef statement 

def say_hello
    puts "Hello ali"
end

say_hello

# undefine the method so that it cannot be accessed again 
undef say_hello

say_hello