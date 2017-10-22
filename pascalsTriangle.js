// 10/21/2017
// Brandon's problem

function pascalsTriangle(numRows) {
  var result = [[1]];
  for (var i = 1; i < numRows; i++) {
    result.push([]);
    var currentRow = result[i];

    for (var j = 0; j <= i ; j++) {
      var newNum = 0;

      if (result[i - 1][j - 1]) {
        newNum += result[i - 1][j - 1];
      }

      if (result[i - 1][j]) {
        newNum += result[i - 1][j];
      }

      currentRow.push(newNum);
    }
  }

  return result;
}

console.log(pascalsTriangle(3));

// Explain before moving into code.
// Explain at each step before writing.
// Ask for edge cases before going in.
// Write down numbers you're working with
// Explain using examples.
// Write neater. 
