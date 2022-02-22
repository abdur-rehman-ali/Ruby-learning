# operator overloading 

class Numbers
    def initialize(real=0,imaginary=0)
        @real = real
        @imaginary = imaginary
    end

    def +(other_item)
        return 21
    end
end

obj1 = Numbers.new(1,2)
obj2 = Numbers.new(1,2)

puts obj1.+(obj2)
puts obj1+obj2 