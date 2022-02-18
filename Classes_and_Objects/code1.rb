# varibales in ruby class  
# 1. class vaiable (prefix @@)
# 2. instance vaiable (prefix @)
# 3. local vaiable (prefix _ or begin with lowecase letter)
# 4. global vaiable (prefix $)



$hello = "Hello ruby developers....."

#Creating class
class Customer

    # class  variable 
    @@no_of_objects = 0

    # constructor
    def initialize(name="Empty",age=0,gender="Empty")
        @cust_name = name
        @cust_age = age
        @cust_gender = gender
        
        # keeping count of objects created 
        @@no_of_objects += 1
    end

    # access class variable using self 
    def self.class_var_access
        @@no_of_objects
    end

    # access class variable without self
    def class_var_access
        @@no_of_objects
    end

    # print global varable 
    def print_global_var
        puts $hello
    end

    # method or behavior
    def hello
        puts "Hello world"
    end

    def greeting(name)
        puts "Hello #{name}"
    end

    def details
        puts "Hello my name is #{@cust_name}. I am #{@cust_age} year old. I am #{@cust_gender}"
    end

end


# creating object of class  
cust1 = Customer.new("Ali",20,"Male")
cust2 = Customer.new
cust3 = Customer.new

# calling method on object cust1
cust1.hello 
cust1.greeting("Riman")
cust1.print_global_var
puts Customer.class_var_access
puts cust1.class_var_access 
cust1.details 

# calling method on object cust2
cust2.hello 
cust2.greeting("Riman")
puts cust1.class_var_access
cust2.details 