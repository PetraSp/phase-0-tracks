// HORSES
var colors = ["magenta", "blue", "green", "red"];
var horseNames = ["Lucy", "Billy", "Sally", "Jack"];
colors.push("yellow");
horseNames.push("David");
var horseColors = {};
for (var i = 0; i < horseNames.length; i++) {
  horseColors[horseNames[i]] = colors[i];
}

console.log(horseColors);
console.log("----");
console.log("----");

// CARS
var car = {carBrand: 'Toyota', 'carModel': 'Venza', 'color': 'black'};
function Car(carBrand, carModel, color) {
  console.log("Here is a car:", this);
  this.carBrand = carBrand;
  this.carModel = carModel;
  this.color = color;
  this.noise = function() { console.log("vroom vroom!"); };
}

var car = new Car("Toyota", "Highlander", "black");
console.log(car);
car.noise();
var carTwo = new Car("Ford", "Explorer", "white");
console.log(carTwo);
carTwo.noise();
var carThree = new Car("Jeep", "Wrangler", "silver");
console.log(carThree);
carThree.noise();

