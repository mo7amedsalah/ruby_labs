#!/usr/bin/ruby
def function()
    puts "plz enter a number: "
    num = gets.chomp.to_i
    puts "plz enter outsideMode: "
    outsideMode = gets.chomp
    if num >= 1 and num <= 10 
        return true
    elsif num <= 1 and outsideMode == 'true'
        return true
    elsif num >= 10 and outsideMode == 'true' 
        return true
    else
        return false
    end
end

puts function()