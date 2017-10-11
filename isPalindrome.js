// David's Problem. 11/11/2017
// 2A

// isPalindrome
//
// Write a function that returns whether a string is a palindrome. Use JavaScript.

function isPalindrome (string) {
  const length = string.length;

  for (let i = 0; i < length / 2; i++) {
    if (string[i] !== string[length - 1 - i]) {
      return false;
    }
  }

  return true;
}

// Good notes on the right
// Think about all edge cases
// Talk louder
// Take your time with writing

// SQL
// Go back look at checklist
// Build out tables beforehand
