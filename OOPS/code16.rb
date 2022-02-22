
# operator overloading to add two objects

class Numbers
    attr_accessor :num1, :num2
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
    end

    def +(other)
        Numbers.new(@num1+other.num1,@num2+other.num2)
    end
end

obj1 = Numbers.new(1,2)
obj2 = Numbers.new(3,4)

puts obj1 + obj2