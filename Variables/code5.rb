
# 5)constant variables 

VAR1 =23
puts VAR1

# we can't change value of constant variables 
# VAR1 = 32
# puts VAR2


puts self  #points to main 


class Customer
    def display
        puts self #Point to customer class
    end
end

cust1 = Customer.new
cust1.display  
