 
 module Addition

    def Addition.add_num(*num)
        sum = 0
        puts num.length
        for i in (0..num.length)
            sum = sum + num[i].to_i
        end
        sum 
    end
end

