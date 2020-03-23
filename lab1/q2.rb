#!/usr/bin/ruby
def result()
    sum=0
    puts "plz, Enter first num: "
    num1= gets.chomp.to_i
    puts "plz, Enter second num: "
    num2= gets.chomp.to_i
    if (num1 == num2)
        sum=2*(num1+num2) 
    else
        sum=num1+num2

    return sum
    end 
end 

puts result()