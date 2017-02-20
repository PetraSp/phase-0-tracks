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
// input: two objects
// iterate over the keys of the first object
// check if that key exists in the second object
// if key exist in the second object then check if the values of the keys are identical in both objects.
// if yes, then return true


function findKeyValueMatch(object1, object2)
{

  for (var key in object1) {
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

console.log(findKeyValueMatch({name:'tamir', age:45}, {name:'paul', age:54}));
// console.log(findLongestString(["long phrase","longest phrase","longer phrase"]));
// console.log(findLongestString(["chair","carpet","bed"]));
