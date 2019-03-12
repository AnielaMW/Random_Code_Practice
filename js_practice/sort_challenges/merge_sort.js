console.log("Merge Sort");

// 1. Check the input array length. If it is 0 or 1, return the array (already sorted!)
// 2. If array length is greater than 1, then we want to define a mid-point, picked by choosing array.length / 2 and call a floor method so the number always rounds down.
// 3. Use the midpoint to divide the array into halves, a left and right. I set my left array to start with first element and end at element mid — 1. My right array starts at mid and ends at the last element. (Note: Ruby ranges .. are inclusive of the last element, whereas ... are exclusive of last element).
// 4. Note that not only do I set left and right subarrays equal to the lengths above, but they’re set to the merge_sort version of those subarrays. That means that merge_sort will be called upon these subarrays, which means picking a new midpoint, dividing the subarray into halves, and set left and right subarrays that will call merge_sort again.
// 5. Lastly, I have a call to the merge method to combine the left and right subarrays into one array.
// Ruby Implementation — Merge
// 6. Once the subarrays are broken down into the smallest pieces possible, now it’s time to sort and merge them together.
// 7. If one of the two subarrays are empty, by default only information in the non-empty subarray is returned.
// 8. If the subarrays are not empty, then we compare the value of each element in the first index position. If the first element of left array is smaller than the first element of right array, then we build the sorted subarray beginning with the first element of left array + the value of a recursive merge function call which takes left[1..left.length],right as the input parameters. It starts with the second element at index 1 since the first element has already been “sorted”.
// 9. If first element of left array is larger than first element of right array, the opposite occurs. We indicate the first element of the right array is “sorted” and call merge on what remains: left, right[1..right.length].

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
