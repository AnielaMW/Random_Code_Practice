console.log("Quick Sort");

// 1. First, our checks to see if array.length <= 1.
// 2. Pick a pivot at random.
// 3. Create a new left and right subarray.
// 4. Loop through every element in the array and compare it to the pivot. If the value is less than pivot, add element to the left subarray. If value is greater than pivot, add element to the right subarray.

let quick_sort = (arr) => {
  if (arr.length < 2) return arr;

  let pivot = arr[(Math.floor(Math.random()*arr.length))];
  let left_arr = [];
  let right_arr = [];

  arr.forEach (x => {
    if (x < pivot){
      left_arr.push(x);
    } else if (x > pivot) {
      right_arr.push(x);
    }
  });


  return quick_sort(left_arr).concat([pivot], quick_sort(right_arr));
};

let check_answer = (arr_a, arr_b) => {
  if (arr_a.length !== arr_b.length) return false;

  for (let i = 0; i < arr_a.length; i++){
    if (arr_a[i] !== arr_b[i]) return false;
  }
  return true;
};

let answer = ["a", "b", "c", "d"];
console.log(check_answer(quick_sort([]), []));
console.log(check_answer(quick_sort(["a"]), ["a"]));
console.log(check_answer(quick_sort(["a", "b", "c", "d"]), answer));
console.log(check_answer(quick_sort(["b", "c", "d", "a"]), answer));
console.log(check_answer(quick_sort(["c", "b", "a", "d"]), answer));
console.log(check_answer(quick_sort(["d", "c", "b", "a"]), answer));
console.log(check_answer(quick_sort(["c", "d", "a", "b"]), answer));
