require 'pry'

puts "Quick Sort"
# 1. First, our checks to see if array.length <= 1.
# 2. Pick a pivot at random. Ruby’s delete_at method will delete the item at the specified index, which in this case would be a rand index in the range of array.length. We’re saving the value of that item to pivot.
# 3. Create a new left and right subarray.
# 4. Loop through every element in the array and compare it to the pivot. If the value is less than pivot, add element to the left subarray. If value is greater than pivot, add element to the right subarray.

def quick_sort(arr)
  return arr if arr.length <= 1
  pivot_ele = arr.sample
  left_arr = []
  right_arr = []

  arr.each do |n|
    if n < pivot_ele
      left_arr.push(n)
    elsif n > pivot_ele
      right_arr.push(n)
    end
  end

  return quick_sort(left_arr).concat([pivot_ele], quick_sort(right_arr))
end

answer = ["a", "b", "c", "d"]
puts quick_sort([]) == []
puts quick_sort(["a"]) == ["a"]
puts quick_sort(["a", "b", "c", "d"]) == answer
puts quick_sort(["b", "c", "d", "a"]) == answer
puts quick_sort(["c", "b", "a", "d"]) == answer
puts quick_sort(["d", "c", "b", "a"]) == answer
puts quick_sort(["c", "d", "a", "b"]) == answer
