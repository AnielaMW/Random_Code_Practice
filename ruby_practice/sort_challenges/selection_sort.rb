require 'pry'

puts "Selection Sort"

# 1. Set n equal to arr.length — 1: this represents how many times you need to do the comparisons. Loop through n.times
# 2. Set a min_index value equal to your initial i index (should be the first element in array).
# 3. Create a second (nested) loop starting at the second element until n using variable j.
# 4. Compare the value of element at index j with value of element of min_index. If value of element at index j is less than value of element of min_index, index j becomes the new min_index. Set min_index = j if this is the case. Exit the inner loop.
# 5. If value of new min_index is not equal to value of element at i then swap value of element at i index with value of element at min_index.
# 6. Lastly, return the manipulated array.

def selection_sort(arr)
  return arr if arr.length < 2
  n = arr.length - 1

  n.times do |i|
    min_index = i
    for j in (i + 1)..n
      binding.pry
      min_index = j if arr[j] < arr[min_index]
    end
    arr[i], arr[min_index] = arr[min_index], arr[i] if min_index != i
  end

  arr
end

answer = ["a", "b", "c", "d"]
puts selection_sort([]) == []
puts selection_sort(["a"]) == ["a"]
puts selection_sort(["a", "b", "c", "d"]) == answer
puts selection_sort(["b", "c", "d", "a"]) == answer
puts selection_sort(["c", "b", "a", "d"]) == answer
puts selection_sort(["d", "c", "b", "a"]) == answer
puts selection_sort(["c", "d", "a", "b"]) == answer
