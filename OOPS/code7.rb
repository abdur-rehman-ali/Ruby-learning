# inheritance 

class Box
    def initialize(l=0,w=0)
        @length = l 
        @width = w
    end

    def area
        @length * @width
    end
end

class BigBox < Box

    def big_area
        @area = @length * @width
        puts "Big box area = #{@area}"
    end

end

obj1 = BigBox.new(10,21)
obj1.big_area