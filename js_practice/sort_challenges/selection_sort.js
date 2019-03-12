console.log("Selection Sort");

// 1. Set n equal to arr.length — 1: this represents how many times you need to do the comparisons. Loop through n.times
// 2. Set a min_index value equal to your initial i index (should be the first element in array).
// 3. Create a second (nested) loop starting at the second element until n using variable j.
// 4. Compare the value of element at index j with value of element of min_index. If value of element at index j is less than value of element of min_index, index j becomes the new min_index. Set min_index = j if this is the case. Exit the inner loop.
// 5. If value of new min_index is not equal to value of element at i then swap value of element at i index with value of element at min_index.
// 6. Lastly, return the manipulated array.

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
