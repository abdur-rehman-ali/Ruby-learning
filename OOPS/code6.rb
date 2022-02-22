# Access control (public,private,protected methods)

class Box
    def initialize(l=0,w=0)
        @length = l 
        @width = w
    end

    # public method 
    def area
        @length * @width
    end

    def print_length
        @length
    end

    def print_width
        @width
    end

    # privatw methods 
    private :print_length, :print_width

    def print_sum
        @length + @width
    end

    # protected methods 
    protected :print_sum
end


obj1 = Box.new(2,2)

puts obj1.area

# can't access private methods 
puts obj1.print_length

# can't access protected methods 
puts obj1.print_sum