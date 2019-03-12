consol.log("Quick Sort");

// 1. First, our checks to see if array.length <= 1.
// 2. Pick a pivot at random. Ruby’s delete_at method will delete the item at the specified index, which in this case would be a rand index in the range of array.length. We’re saving the value of that item to pivot.
// 3. Create a new left and right subarray.
// 4. Loop through every element in the array and compare it to the pivot. If the value is less than pivot, add element to the left subarray. If value is greater than pivot, add element to the right subarray.

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
