require 'pry'

puts "Insertion Sort"

# 1. First, we iterate through all elements of the array with (array.length).times do. x represents the index of the item in the array.
# 2. Then we set the if/else checks to run only if x > 0 (element is not the first item, which has index 0).
# 3. The if/else checks compares the previous element with the current element; if previous element is larger than current element, swap previous with current.
# 4. If previous element is not larger than current element, the if/else terminates.
# 5. The x counter is decremented by 1.

def insertion_sort(arr)
  return arr if arr.length < 2

  (arr.length).times do |x|
    while x > 0
      if arr[x] < arr[x-1]
        arr[x-1], arr[x] = arr[x], arr[x-1]
      else
        break
      end
      x-=1
    end
  end

  arr
end

answer = ["a", "b", "c", "d"]
puts insertion_sort([]) == []
puts insertion_sort(["a"]) == ["a"]
puts insertion_sort(["a", "b", "c", "d"]) == answer
puts insertion_sort(["b", "c", "d", "a"]) == answer
puts insertion_sort(["c", "b", "a", "d"]) == answer
puts insertion_sort(["d", "c", "b", "a"]) == answer
puts insertion_sort(["c", "d", "a", "b"]) == answer
