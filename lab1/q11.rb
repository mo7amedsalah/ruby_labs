#!/usr/bin/ruby
def function()
    puts "plz enter a string: "
    st= gets.chomp
    if st.length > 2
        return st[1...st.length-1]
    else
        return " "
    end
end

puts function()