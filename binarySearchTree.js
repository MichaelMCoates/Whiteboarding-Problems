// 10/21/2017
// My Problem
//check if a binary Tree is a binary Search Tree

//think you coded to sooon without fully fleshing out the algorithm
//try some sudocode and run through it for a problem with recursion
//don't clarify what a binary search tree is I'd say
//its something that you should know probably
//use root tree to explain
//when using helper functions

function BSTValidator(rootNode) {
  var left = leftChildCheck(rootNode);
  var right = rightChildCheck(rootNode);
  return left && right;
}

//Child Check
//3 conditions
//child exists? return true
//child is less/than greater than root - return true
//child is not less than/greater than root - return false
