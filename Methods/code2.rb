

# method with default parameters 
def print_language(lang1 = "ruby",lang2 = "python")
    puts "Language 1 = #{lang1}"
    puts "Language 2 = #{lang2}"
end

# method call 
print_language "C++","Java"
print_language