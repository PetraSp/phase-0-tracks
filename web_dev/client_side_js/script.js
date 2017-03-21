console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("cali-photo");
photo.addEventListener("click", addPinkBorder);



function addh2Header(event) {
  var newHeader = document.createElement('h2');
  var h2Text = document.createTextNode('New h2 element');
  newHeader.appendChild(h2Text);
  document.body.appendChild(newHeader);
}

var testing = document.getElementById('testing')
document.body.append('testing')

testing.addEventListener('click', addh2Header)



var x = document.getElementById("cali-photo");
x.addEventListener("mouseover", myFunction)

function myFunction() {
    document.getElementById("cali-photo").innerHTML += "Moused over!<br>"
    console.log('You clicked me!')
}
