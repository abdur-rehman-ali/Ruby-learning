# class methods and variables 
# class method = method initialzed with self keyword

# Class methods do not have access to instance methods or instance variables. 
# However instance methods can access both class methods and class variables.


class Box

    # class variable 
    @@count = 0
    def initialize(l=0,w=0)
        @length = l 
        @width = w

        @@count += 1
    end

    # instance method 
    def instance_method
        puts "Instance method called"
        # instance method can access class variables and class methods 
        puts "#{@@count}"
    end

    def area
        instance_method
        @length * @width
    end

    # class method 
    def self.print_count()
        @@count
    end

   

    # another way to create class method 
    class << self
        def show
            puts "Class method called"
            # have no access to instance variable 
            puts @length
            # have no access to instance method 
            # instance_method
            
        end
    end
end

obj1 = Box.new(12,21)
puts obj1.area
obj2 = Box.new
obj3 = Box.new
obj4 = Box.new

puts Box.print_count
Box.show
