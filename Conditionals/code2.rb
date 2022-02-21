num1=20
num2=60

if (num1>=num2) && (num1>0 && num2>0)
    puts "#{num1} is greater than or equal to #{num2} .And both are postive"
    
elsif (num1<=num2) && (num1<0 && num2<0)
    puts "#{num1} is less than or equal to #{num2} .And both are negative"
else
    puts "Both number are zero or Both numbers are of different signs"
end