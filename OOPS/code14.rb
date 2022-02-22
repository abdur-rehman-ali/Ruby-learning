
# attr_accessor

class Box
    attr_accessor :length,:width
    def initialize(length,width)
        @length = length
        @width = width
    end
end

obj1 = Box.new(10,20)
obj1.length = 20
obj1.width = 30

puts obj1.length
puts obj1.width

