// Release 0: Find the Longest Phrase

function compareStrings(array){
var longestString = '';
var lengthCount = 0;

for (var i = 0; i < array.length; i++) {
var stringLength = array[i].length;

if (stringLength > lengthCount) {
lengthCount = stringLength;
longestString = array[i];
}
}

return longestString;
}

var array = ["long phrase","longest phrase","longer phrase"];
console.log(compareStrings(array));

// Release 1: Find a Key-Value Match

function checkIfObjectContains(object1, object2) {
   for (var i in object1) {
           if (object2.hasOwnProperty(i) || object1[i] == object2[i] ) {
              return true;
           }       
   }
   return false;
}

object1 = {name: "Steven", age: 54};
object2 = {surname: "Novak", hairColor: "black"};

console.log(checkIfObjectContains(object1,object2));


// Release 2: Generate Random Test Data

function randomData(int) {
var array = [];
var alphabet = 'abcdefghijklmnopqrstuvwxyz';
for (var i = 0; i < int; i++) {
  var min = 1;
  var max = Math.floor(Math.random() * 10) + min;
  var randomWord = '';
   
  while (randomWord.length < max) {
    randomWord += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
  }
   
  array.push(randomWord);
}

return array;
}

console.log(randomData(3));