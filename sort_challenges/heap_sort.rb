require 'pry'

puts "Heap Sort"
# 1. In def heap_sort, we first build a max heap.
# 2. Then, we call a loop: while the array length is greater than 1, swap root element with the last element, reduce the length by 1 (since we have sorted one item), and re-build the heap so that it satisfies the max-heap condition.
# 3. At the end, we remake the array into its original size and revert the root back to index [0].
# 4. The def heapify method will sift the elements until they’re in their rightful place.
# 5. parent indicates where to start sifting and limit tells how far down the heap to sift.
# 6. Set parent node as the root. While the child index is less than or equal to the limit (indicates that root has at least one child), we increment child by 1 to get it’s sibling IF the child is less than limit and the value of child is smaller than value of it’s sibling. The loop terminates if value of root is greater than value of child (since root must always be greater than children in a max heap). Otherwise, swap the value of parent and child, and after the loop, we set the array[parent] equal to the stored root value.

def heap_sort(arr)
  n = arr.length
  a = [nil] + arr

  return arr if n <= 1

  (n / 2).downto(1) do |i|
    heapify(a, i, n)
  end

  while n > 1
    a[1], a[n] = a[n], a[1]
    n -= 1
    heapify(a, 1, n)
  end
  a.drop(1)
end

def heapify(arr, parent, limit)
  root = arr[parent]
  while (child = 2 * parent) <= limit
    child += 1 if child < limit && arr[child] < arr[child + 1]
    break if root >= arr[child]
    arr[parent], parent = arr[child], child
  end
  arr[parent] = root
end

answer = ["a", "b", "c", "d"]
puts heap_sort([]) == []
puts heap_sort(["a"]) == ["a"]
puts heap_sort(["a", "b", "c", "d"]) == answer
puts heap_sort(["b", "c", "d", "a"]) == answer
puts heap_sort(["c", "b", "a", "d"]) == answer
puts heap_sort(["d", "c", "b", "a"]) == answer
puts heap_sort(["c", "d", "a", "b"]) == answer
