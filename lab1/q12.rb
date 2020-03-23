#!/usr/bin/ruby
def function(array)
    result = 0 
    for i in array
        if i % 2 == 0
            result += 1
        end
    end
    return result
end

puts function([1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,15])