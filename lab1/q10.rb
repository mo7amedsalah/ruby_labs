#!/usr/bin/ruby
def function()
    puts "plz enter the first_string: "
    st1= gets.chomp
    puts "plz enter the second_string: "
    st2= gets.chomp
    if st1.length == 1
        if st2.length == 1
          return " "
        else
          return st2[1..st2.length]
        end  
    elsif st2.length == 1
        return st1[1..st1.length]
    else
        return st1[1..st1.length]+st2[1..st2.length]
    end
end

puts function()