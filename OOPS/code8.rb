# method overriding 

class Box
    def show
        puts "This is base class"
    end
end

class BigBox < Box
    
    # method overriding 
    def show
        puts "This is derived class"
    end
end

obj1 = BigBox.new
obj1.show