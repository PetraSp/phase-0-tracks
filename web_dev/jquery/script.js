function checkAndSubmit(){
  // define the variable color that will retrieve the value of the HTML text input field
var color = $('#color').val();

var colorArray = ['red', 'blue', 'yellow', 'white', 'brown', 'pink', 'black', 'purple', 'orange'];
// check if the retrieved value isn't an empty string
if (color !== '') {
// check if the retrieved value exists in our array
if ($.inArray(color, colorArray) !== -1) {
// if the color value exists, add the following HTML to the div#color-output
$('#color-output').html('Your preferred color is: '+ color);
// remove any previous classes that the div might have, and add the new one
$('#color-output').removeClass().addClass(color);
} else {
// if the retrieved value doesn't exist in the array, alert the following
alert('We don\'t have your color.');
}
} else {
// if the retrieved value is an empty string, alert the following
alert('Please insert a color');
}
}

// var color = document.getElementById('color').value;


  

