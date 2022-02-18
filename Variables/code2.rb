#  2)instance variable 


class Customer

    def initialize(name="Default",age=0,gender="Default")
        # instance variable 
        @cust_name = name
        @cust_age = age
        @cust_gender = gender
    end

    def print_details
        puts "Name = #{@cust_name} \nAge = #{@cust_age} \nGender = #@cust_gender\n"
    end

end

cust1 = Customer.new("Ali",21,"Male")
cust1.print_details

cust2 = Customer.new()
cust2.print_details
