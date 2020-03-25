#!/usr/bin/ruby
def fun()
    puts "plz enter first_number: "
    num1= gets.chomp.to_i
    puts "plz enter second_number: "
    num2= gets.chomp.to_i

    if num1 == 6 || num2==6 || ( num1+num2 == 6 || ((num1-num2).abs == 6) )
        return true
    else
        return false
    end
end

puts fun()