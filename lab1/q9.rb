#!/usr/bin/ruby
def function()
    puts "plz enter a string: "
    st = gets.chomp
    if st.length < 2
        return st
    else
        return st[0...2]
    end
end

puts function()