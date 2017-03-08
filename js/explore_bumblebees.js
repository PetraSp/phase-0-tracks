// Pseudocode
// Write a function that takes a string as a parameter and reverses it
// Input: a string
// Steps: initialize a loop
//        iterate through input string backwards, start at the last letter
//        the loop will keep running as long as i>=0
// add each letter to a new string
// Output: a new reversed string
// Test it with driver code (node explore.js)

function reverse(string) {
  var newStr = "";
  for (var i = string.length -1; i >= 0; i--) {
  newStr += string[i];
  }
  return newStr;
}

var string = reverse("devbootcamp");
if (1 == 1) {
  console.log(string);
}
