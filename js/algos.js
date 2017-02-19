// write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
// input: an array of strings
// steps:
// define variables to store longest string(text) and length(num)
// - get the first string length and then start comparing with other strings
// - iterate over the array's items to find out their length 
// - compare the string's length with the previous string
// - store the longest string in a variable
// - store the lenght of the longer string
// output: a string (the longest string in the input array)

function findLongestString(arrayString){ 
  var longestString;
  var longestLength;

  for (var i = 0; i < arrayString.length; i++){
    if (arrayString[i].length > longestLength){
      longestString = arrayString[i];
      longestLength = arrayString[i].length;
    }
  }
  return longestString;
}

findLongestString(["long phrase","longest phrase","longer phrase"])
findLongestString(["chair","carpet","bed"])
