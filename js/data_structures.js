
var colors = ["red", "magenta", "teal", "blue"];
var horses = ["Ed", "Chris", "Bob", "Jasmine"];

colors.push("white");
horses.push("Ikuko");

console.log(colors);
console.log(horses);

var horse = {};
var temp;


for(var i = 0; i < horses.length; i++){

horse[horses[i]] = colors[i];


	
};

console.log(horse)


function Car(make, color, year, runs){

	this.make = make;
	this.color = color;
	this.year = year;
	this.runs = true;
	this.honk = function() {console.log("beep beep!");};

}

var myCar = new Car("Mazda", "Red", 2015, true);
console.log("Chris has a " + myCar.make + ".");
console.log("Chris' car is "+ myCar.color + " and was made in " + myCar.year + ".")
myCar.honk();
console.log("My car is working?")
console.log("-------------")
var ikukoCar = new Car("Toyota", "Black", 1998, false);
console.log("Ikuko has a " + ikukoCar.make + ".");
console.log("Ikuko's car is "+ ikukoCar.color + " and was made in " + ikukoCar.year + ".")
ikukoCar.honk();








