# object equality, eql? method , hash codes 

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

    def hash
        puts "Hash method called"
        self.length.hash ^ self.width.hash
    end

    def eql?(obj)
        puts "eql invoked"
        (self.length == obj.length ) && (self.width == obj.width )
    end
end



box1 = Box.new(10,20)
box2 = Box.new(10,20)
box3 = Box.new(10,20)
box4 = Box.new(1,20)

box_array = [box1,box2,box3,box4]
puts box_array.uniq
