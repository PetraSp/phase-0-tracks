var colors = ["blue", "magenta", "puce", "cyan"];
var names = ["Ed", "Billy", "Lucy", "Sally"];

colors.push("green");
names.push("George");

console.log(colors);
console.log(names);

var horsecolors = {};

for (var i = 0; i < names.length; i++) {
  horsecolors[names[i]] = colors[i];
};

console.log(horsecolors);


function Car(topSpeed,color,brand,under14Feet){
  this.topSpeed = topSpeed;
  this.color = color;
  this.brand = brand;
  this.under14Feet = under14Feet;
  this.payfee = function() {
    if(this.under14Feet){
      console.log ("No additional fee:)");
    } else {
      console.log("Sorry, you have to pay an additional fee.");
    }
  }

};

var car = new Car(100,"blue","Ford",true);
console.log(car);
car.payfee();

var car2 = new Car(150,"red","Ferrari",true);
console.log(car2);
car2.payfee();

var car3 = new Car(90,"white","Dodge",false);
console.log(car3);
car3.payfee();



