console.log("Bubble Sort");

// 1. bubble_sort takes in a single array as the parameter.
// 2. If the array size is 1 or 0, return the array; by default, an empty array or array with one element is sorted.
// 3. Create the swap variable and set it to true by default.
// 4. Create a while loop that will run as long as swap is true.
// 5. Set swap = false since immediately after the beginning of your loop, there have been no swaps.
// 6. In the loop, iterate through each element of the array and check if element x is greater than the element next to it x + 1. If so, swap the value of x with value of x+1 and set value of swap to true since we did make a swap.
// 7. The loop repeats until every item is in order and the value of swap remains at false. The loop will terminate and the array will be returned.

let bubble_sort = (arr) => {
  if (arr.length < 2) return arr;

  let swap = true;

  while (swap === true) {
    swap = false;
    for (let i = 0; i < arr.length; i++) {
      if (arr[i] > arr[i+1]) {
        swap = true;
        let x = arr[i];
        let y = arr[i+1];
        arr[i+1] = x;
        arr[i] = y;
      }
    }
  }

  return arr;
};

let check_answer = (arr_a, arr_b) => {
  if (arr_a.length !== arr_b.length) return false;

  for (let i = 0; i < arr_a.length; i++) {
    if (arr_a[i] !== arr_b[i]) return false;
  }
  
  return true;
};

let answer = ["a", "b", "c", "d"];
console.log(check_answer(bubble_sort([]), []));
console.log(check_answer(bubble_sort(["a"]), ["a"]));
console.log(check_answer(bubble_sort(["a", "b", "c", "d"]), answer));
console.log(check_answer(bubble_sort(["b", "c", "d", "a"]), answer));
console.log(check_answer(bubble_sort(["c", "b", "a", "d"]), answer));
console.log(check_answer(bubble_sort(["d", "c", "b", "a"]), answer));
console.log(check_answer(bubble_sort(["c", "d", "a", "b"]), answer));
