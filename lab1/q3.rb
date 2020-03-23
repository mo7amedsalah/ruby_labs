#!/usr/bin/ruby
def diff()
    puts "plz, Enter number: "
    num= gets.chomp.to_i
    res=(num-21).abs
    if (num > 21)
        return (2*res) 
    else
        return res
    end 
end 

puts diff()