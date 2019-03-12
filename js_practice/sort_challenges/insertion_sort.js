console.log("Insertion Sort");

// 1. First, we iterate through all elements of the array with (array.length).times do. x represents the index of the item in the array.
// 2. Then we set the if/else checks to run only if x > 0 (element is not the first item, which has index 0).
// 3. The if/else checks compares the previous element with the current element; if previous element is larger than current element, swap previous with current.
// 4. If previous element is not larger than current element, the if/else terminates.
// 5. The x counter is decremented by 1.

let sort_arr = (arr) => {
  if (arr.length < 2) return arr;

  for (let i = 0; i < arr.length; i++) {
    while (i > 0) {
      let x = arr[i];
      let y = arr[i-1];
      if (x < y) {
        arr[i-1] = x;
        arr[i] = y;
      } else {
        break;
      }
      i--;
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
console.log(check_answer(sort_arr([]), []));
console.log(check_answer(sort_arr(["a"]), ["a"]));
console.log(check_answer(sort_arr(["a", "b", "c", "d"]), answer));
console.log(check_answer(sort_arr(["b", "c", "d", "a"]), answer));
console.log(check_answer(sort_arr(["c", "b", "a", "d"]), answer));
console.log(check_answer(sort_arr(["d", "c", "b", "a"]), answer));
console.log(check_answer(sort_arr(["c", "d", "a", "b"]), answer));
