// Mine. 10/4/2017. Whiteboarding with Julian.
// 01

// Watch for end statements in JS.
// Watch for semicolons.

// Productive to put notes on left.
// Julian -> Headers on the left is good
// Roadmap on the left with bullet points

// Check checklists of constraints

function caesarCipher (inputString, shift) {
  const alphabet = "abcdefghijklmnopqrstuvwxyz";

  let result = "";

  for (var i = 0; i < inputString.length; i++) {
    let char = inputString[i];
    if (char === ' ') {
      result += ' ';
    } else {
      let startIdx = alphabet.indexOf(char);
      let shiftedIdx = (startIdx + shift) % 26;
      result += alphabet[shiftedIdx];
    }
  }

  return result;
}

function caesarCipher (inputString, shift) {
  const alphabet = {
    'a': 0,
    'b': 1,
    'c': 2,
    'd': 3,
    'e': 4,
    'f': 5,
    'g': 6,
    'h': 7,
    'i': 8,
    'j': 9,
    'k': 10,
    'l': 11,
    'm': 12,
    'n': 13,
    'o': 14,
    'p': 15,
    'q': 16,
    'r': 17,
    's': 18,
    't': 19,
    'u': 20,
    'v': 21,
    'w': 22,
    'x': 23,
    'y': 24,
    'z': 25
  };

  const indices = {
    0: 'a',
    1: 'b',
    2: 'c',
    3: 'd',
    4: 'e',
    5: 'f',
    6: 'g',
    7: 'h',
    8: 'i',
    9: 'j',
    10: 'k',
    11: 'l',
    12: 'm',
    13: 'n',
    14: 'o',
    15: 'p',
    16: 'q',
    17: 'r',
    18: 's',
    19: 't',
    20: 'u',
    21: 'v',
    22: 'w',
    23: 'x',
    24: 'y',
    25: 'z'
  };

  let result = "";

  for (var i = 0; i < inputString.length; i++) {
    let char = inputString[i];
    if (char === ' ') {
      result += ' ';
    } else {
      let startIdx = alphabet[char];
      let shiftedIdx = (startIdx + shift) % 26;
      result += indices[shiftedIdx];
    }
  }

  return result;
}

// console.log(caesarCipher("aoweijfiajew", 2));

// Watch for double vs. triple equals.
//  Change alphabet to hash map
