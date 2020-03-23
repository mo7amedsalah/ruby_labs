#!/usr/bin/ruby
def fun()
    puts "plz, Enter Number: "
    num= gets.chomp.to_i
    if (num >= 10 and num <= 100) || num == 200 
        return true
    else
        return false
    end 
end 

puts fun()