# overloading equality operator 

class Box
    attr_accessor :length,:width
    def initialize(length,width)
        @length = length
        @width = width
    end

    # string representation of object 
    def to_s
        "(Length=#{@length},Width=#{@width})"
    end


    # overloading equal to operator
    def ==(obj)
        puts "Method called on #{self} with parameter #{obj}"
        return true if (self.length == obj.length ) && (self.width == obj.width )
        return false
    end
end

box1 = Box.new(10,20)
box2 = Box.new(10,20)
box3 = Box.new(10,20)

# box1.==(box2)
puts box1 == box2

# Array.uniq method return unique elements
num = [1,1,1,1,1,2,2,2,]
puts num.uniq

box_array = [box1,box2,box3]
# it will return every elements although array.uniq only return unique elements in array 
puts box_array.uniq