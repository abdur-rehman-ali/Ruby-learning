class Box
    attr_accessor :length,:width
    def initialize(length,width)
        @length = length
        @width = width
    end
end

box1 = Box.new(10,20)

puts box1 
p box1 