// myMap
// 03A
// 10/10/2017 - David's Problem
//
// Implement the map function in JavaScript using recursion.

const map = (fn, [first, ...rest]) =>
	first === undefined ? [] : [fn(first), ...map(fn, rest)]

The second solution saves space complexity by not creating a new array in each recursive call.

function myMap (array, callback) {
  const mappedArray = [...array];
  let idx = 0;
  const _pointerMap = () => {
    if (idx === array.length) return;
    mappedArray[idx] = callback(array[idx]);
    idx += 1;
    _pointerMap();
  }
  _pointerMap();
  return mappedArray;
}


function davidMap(array, cb) {
	if (array.length === 1) {
		return [cb(array[0])];
	}

	const mapped = [cb(array[0])];

	return mapped.concat(davidMap(array.slice(1), cb));
}

// console.log(davidMap([1, 2, 3], (el) => { return el + 1; }));


// Good when you're talking towards me, do that more
// Start with concepts and then go into the code
// Slow down on the handwriting, needs to be neater
// Should ask about inputs and outputs
// Should ask about ES5/ES6
// Run through test case with me
// Curly braces and semicolons
// Ask me before running through test cases

// Be more organized and slow down in test case
