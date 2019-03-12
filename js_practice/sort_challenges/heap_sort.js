comsole.log("Heap Sort");

// 1. In def heap_sort, we first build a max heap.
// 2. Then, we call a loop: while the array length is greater than 1, swap root element with the last element, reduce the length by 1 (since we have sorted one item), and re-build the heap so that it satisfies the max-heap condition.
// 3. At the end, we remake the array into its original size and revert the root back to index [0].
// 4. The def heapify method will sift the elements until they’re in their rightful place.
// 5. parent indicates where to start sifting and limit tells how far down the heap to sift.
// 6. Set parent node as the root. While the child index is less than or equal to the limit (indicates that root has at least one child), we increment child by 1 to get it’s sibling IF the child is less than limit and the value of child is smaller than value of it’s sibling. The loop terminates if value of root is greater than value of child (since root must always be greater than children in a max heap). Otherwise, swap the value of parent and child, and after the loop, we set the array[parent] equal to the stored root value.

let sort_arr = (arr) => {
  if (arr.length < 2) return arr;



  return arr;
};

let check_answer = (arr_a, arr_b) => {
  if (arr_a.length !== arr_b.length) return false;

  for (let i = 0; i < arr_a.length; i++){
    if (arr_a[i] !== arr_b[i]) return false;
  }
  return true;
};

let answer = ["a", "b", "c", "d"];
console.log(check_answer(sort_arr([]), []));
console.log(check_answer(sort_arr(["a"]), ["a"]));
console.log(check_answer(sort_arr(["a", "b", "c", "d"]), answer));
console.log(check_answer(sort_arr(["b", "c", "d", "a"]), answer));
console.log(check_answer(sort_arr(["c", "b", "a", "d"]), answer));
console.log(check_answer(sort_arr(["d", "c", "b", "a"]), answer));
console.log(check_answer(sort_arr(["c", "d", "a", "b"]), answer));
