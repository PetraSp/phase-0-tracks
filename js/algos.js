// Release 0
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
// input: an array of strings
// steps:
//  - declare variables to store the longest string(text) and length(num)
//  - get the first string length and then start comparing it with other strings
//  - iterate over the array's items to find out their length 
//  - compare the string's length with the previous string
//  - store the longest string in a variable
//  - store the lenght of the longer string
// output: a string (the longest string in the input array)

function findLongestString(arrayString)
{ 
  var longestString;
  var longestLength = 0;

  for (var i = 0; i < arrayString.length; i++){
    if (arrayString[i].length > longestLength){
      longestString = arrayString[i];
      longestLength = arrayString[i].length;
    }
  }
  return longestString;
}


// Release 1
// Find a key-value match: write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// input: two objects
//  - iterate over the keys of the first object
//  - check if that key exists in the second object
//  - if key exist in the second object then check if the values of the keys are identical in both objects
//  output: if yes, then return true, if not then return false


function findKeyValueMatch(object1, object2)
{

  for (var key in object1) 
  {
    if (object2.hasOwnProperty(key))
    {
      if (object2[key] == object1[key])
      {
        return (true);
      }
    }
  }
  return (false);
}

// Release 2
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. 
// The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.
// Input: integer
//  - define an empty array to store letters in
//  - define alphabet variable
//  - generate a random number between 1 and 10
//  - generate a random number between 1 and 26 
//  - add the letter that corresponds with number into randomWord string
// Output: an array of random words 
// *research javascript random number generator: Math.floor((Math.random() * 10) + 1); -returns number btwn 1 and 10 

function generateRandomWords(num)
{
  var randomWordsArray = [];
  var alphabet = "abcdefghijklnmopqrstuvwxyz";

// random word to 1-10 characters
  for (var i = 0; i < num; i++) {
    var randomWord = "";
    var randNum1to10 = Math.floor((Math.random() * 10) + 1);

    for (var x = 0; x < randNum1to10; x++) {

      var randNum1to26 = Math.floor((Math.random () * 26) + 1);
        
        randomWord = randomWord + alphabet[randNum1to26];
    }
    randomWordsArray.push(randomWord);
}
 return (randomWordsArray);
}

console.log(generateRandomWords(10));

// console.log(findKeyValueMatch({name:"Tamir", age:45}, {name:"Paul", age:54}));
// console.log(findLongestString(["long phrase","longest phrase","longer phrase"]));
// console.log(findLongestString(["chair","carpet","bed"]));