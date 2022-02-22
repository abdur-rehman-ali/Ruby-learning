 
# iterating over hash using each method
# key and value method on hash 

student ={
    "name"=>"ali joiya",
    "age"=>21,
    "profession"=>"programmer"
}

student.each do |key,value| 
    puts "#{key} - #{value}"
end 

# printing keys 
puts student.keys 

# prinitng values 
puts student.values