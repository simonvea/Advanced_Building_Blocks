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


a1 = [6,5,4,3,2,1]
a2 = [69,85,42,9,59,2,100, 3, 50]

puts "Test 1: #{a1}"
puts bubble_sort(a1)
puts "Test 2: #{a2}"
puts bubble_sort(a2)

