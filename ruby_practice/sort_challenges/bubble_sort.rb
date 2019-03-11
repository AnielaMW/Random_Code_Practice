require 'pry'

puts "Bubble Sort"

# 1. bubble_sort takes in a single array parameter.
# 2. If the array size is 1 or 0, return the array; by default, an empty array or array with one element is sorted.
# 3. Create the swap variable and set it to true by default.
# 4. Create a while loop that will run as long as swap is true.
# 5. Set swap = false since immediately after the beginning of your loop, there have been no swaps.
# 6. In the loop, iterate through each element of the array and check if element x is greater than the element next to it x + 1. If so, swap the value of x with value of x+1 and set value of swap to true since we did make a swap.
# 7. The loop repeats until every item is in order and the value of swap remains at false. The loop will terminate and the array will be returned.

def bubble_sort(arr)
  return arr if arr.length < 2
  swap = true

  while swap
    swap = false
    (arr.length-1).times do |x|
      if arr[x] > arr[x+1]
        swap = true
        arr[x], arr[x+1] = arr[x+1], arr[x]
      end
    end
  end

  arr
end

answer = ["a", "b", "c", "d"]
puts bubble_sort([]) == []
puts bubble_sort(["a"]) == ["a"]
puts bubble_sort(["a", "b", "c", "d"]) == answer
puts bubble_sort(["b", "c", "d", "a"]) == answer
puts bubble_sort(["c", "b", "a", "d"]) == answer
puts bubble_sort(["d", "c", "b", "a"]) == answer
puts bubble_sort(["c", "d", "a", "b"]) == answer
