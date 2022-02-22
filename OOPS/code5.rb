# to_s method 

class Box
    def initialize(l=0,w=0)
        @length = l 
        @width = w
    end

#    string formatting of object 
    def to_s
        "width = #@width , length = #@length"
    end 
end

obj1 = Box.new(10,21)


# to_s method will be called in reference of string automatically.
puts "#{obj1}"