// Julian's Problem. 10/6/2017
// sum rec
// 01

// Write a function that takes an array of integers and recursively computes the sum.

// def sum_rec(nums)
//   return 0 if nums.empty?
//   nums[0] + sum_rec(nums.drop(1))
// end

function sumRecur(arr) {
  if (arr.length === 0) return 0;

  return arr[0] + sumRecur(arr.slice(1));
}

function sumRecur2(arr, head = 0, tail = arr.length, acc = 0) {
  if (head === tail) return acc;
  return sumRecur2(arr, head + 1, tail, acc + arr[head]);
}

// Is sumRecur2 preferable to sumRecur?
// Yes.

// What is the time complexity of slice?
// O(n)



// Julian's solution

// Notes:
// Speak at me, not at the board as much
// Great edge cases
// Take your time with writing.
// Maybe in notes section, should quickly run through a sample input and output.
// Take your time when explaining recursion, base case, etc. What makes that input special?
// Keep the contact with the interviewer.
// Talk confidently about edge cases.
// Sum of oranges = 0.
// More semantic naming
// Explain concept before writing code.
// Explain input of recursive step and return.
