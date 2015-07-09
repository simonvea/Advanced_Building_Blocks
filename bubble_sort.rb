def bubble_sort(array)

    n = array.length - 2
    j = 0
    
    while n > 0
        array[0..n].each_with_index do |value, i|
                
            j = i+1
            
            if array[i] > array[j]
                array[i], array[j] = array[j], array[i]
            end
        end
     n = n - 1
    end
    
    array
end

=begin
Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. The block should take two arguments which represent the two elements currently being compared. Expect that the block's return will be similar to the spaceship operator you learned about before -- if the result of the block is negative, the element on the left is "smaller" than the element on the right. 0 means they are equal. A positive result means the left element is greater. Use this to sort your array.
=end


def bubble_sort_by(array)
    
    n = array.length - 2
    j = 0
    
    while n > 0
        array[0..n].each_with_index do |value, i|
                
            j = i+1
            
            
            if yield(array[i], array[j]) < 0 #gir inputene fra blocka variablene array[i] og array[j]
                array[i], array[j] = array[j], array[i]
            end
        end
     n = n - 1
    end
    
    array 
end

=begin
Test for bubble_sort:

a1 = [6,5,4,3,2,1]
a2 = [69,85,42,9,59,2,100, 3, 50]

puts "Test 1: #{a1}"
puts bubble_sort(a1)
puts "Test 2: #{a2}"
puts bubble_sort(a2)
=end

#test for bubble_sort with block

puts "Start test bubble_sort_by"
x = bubble_sort_by(["hi","hello","hey"]) do |left,right|
    right.length - left.length
end

puts x



