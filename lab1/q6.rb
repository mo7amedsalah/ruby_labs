#!/usr/bin/ruby
def function()
    puts "plz enter a number: "
    num1 = gets.chomp.to_i
    puts "plz enter second number: "
    num2 = gets.chomp.to_i
    puts "plz enter third number: "
    num3 = gets.chomp.to_i
    if num1 == num2 
        if num1 == num3
            return 0
        else
            return num3
        end
    elsif num1 == num3
        return num3
    elsif num2 == num3
        return num1
    else
        return num1+num2+num3
    end  
end
puts function()