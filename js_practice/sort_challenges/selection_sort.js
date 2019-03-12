console.log("Selection Sort");

// 1. Set n equal to arr.length — 1: this represents how many times you need to do the comparisons. Loop through n.times
// 2. Set a min_index value equal to your initial i index (should be the first element in array).
// 3. Create a second (nested) loop starting at the second element until n using variable j.
// 4. Compare the value of element at index j with value of element of min_index. If value of element at index j is less than value of element of min_index, index j becomes the new min_index. Set min_index = j if this is the case. Exit the inner loop.
// 5. If value of new min_index is not equal to value of element at i then swap value of element at i index with value of element at min_index.
// 6. Lastly, return the manipulated array.

let selection_sort = (arr) => {
  if (arr.length < 2) return arr;

  for (let i = 0; i < arr.length; i++) {
    let min_index = i;

    for (let j = i; j < arr.length; j++) {
      if (arr[j] < arr[min_index]) {
        min_index = j;
      }
    }

    if (min_index != i) {
      let x = arr[i];
      let y = arr[min_index];
      arr[min_index] = x;
      arr[i] = y;
    }
  }

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
console.log(check_answer(selection_sort([]), []));
console.log(check_answer(selection_sort(["a"]), ["a"]));
console.log(check_answer(selection_sort(["a", "b", "c", "d"]), answer));
console.log(check_answer(selection_sort(["b", "c", "d", "a"]), answer));
console.log(check_answer(selection_sort(["c", "b", "a", "d"]), answer));
console.log(check_answer(selection_sort(["d", "c", "b", "a"]), answer));
console.log(check_answer(selection_sort(["c", "d", "a", "b"]), answer));
