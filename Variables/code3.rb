# 3)class variable 

class Customer

    # class vatiable 
    @@count = 0

    def initialize(name)
        @cust_name = name
    end

    def print_details
        puts "My name is #@cust_name"
    end

    def count_customer
        @@count+=1
        puts "Total customer = #@@count "
    end
end

cust1 = Customer.new("Ali")
cust1.count_customer

cust2 = Customer.new("Rimaan")
cust2.count_customer

cust3 = Customer.new("Mine")
cust3.count_customer