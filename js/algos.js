

/* 
Function takes in array of words and returns the longest

Loop through array using for loop
Temporary variable is assigned an element in the array
Compare element to variable with current largest (starts out empty string)
	IF element length greater than current largest
	replace current largest with current element
Return largest word



*/


function longestWord(wordArray){
	var longWord = "";

	for (var i = 0; i < wordArray.length; i++){
		var	temp = wordArray[i];
		if (temp.length > longWord.length){
			longWord = temp;
		}
	}
	return longWord;
}
//var wordArray = ["pie", "cake", "fruit", "tiramisu", "danish","cookies"];
//var theLongestWord = longestWord(wordArray)
//console.log(theLongestWord)


/*
Function to compare two objects

Pass in two objects to have values compared. 
	For each object 
		Iterate through keys
		assign the values to an array
Iterate through each array and compare by element
	If there is a match
		set isEqual flag to true
Return isEqual flag.	
				

*/

function checkForMatch(obj1, obj2){

isEqual = false;
values1 = [];
values2 = [];

for (var property in obj1) {
    if (obj1.hasOwnProperty(property)) {
    values1.push(obj1[property]);
    
    }
}
for (var property in obj2) {
    if (obj2.hasOwnProperty(property)) {
    values2.push(obj2[property]);
    
    }
}
var i = 0;
while ( i < values1.length){
  if (values1[i] == values2[i]){
    isEqual = true;
  }
  i++;
}
return isEqual;
}
var car1 = {make:"Fiat", model:"500", color:"red", year:"2010"};
var car2 = {make:"Buick", model:"leSabre", color:"red", year:"2016"};

var ckMatch = checkForMatch(car1, car2);
console.log(ckMatch);

var car3 = {make:"Honda", model:"Civic", color:"red", year:"2010"};
var car4 = {make:"Toyota", model:"Rav4", color:"green", year:"2016"};

ckMatch = checkForMatch(car3, car4);
console.log(ckMatch);


/* Random words function

Pass in integer for amount of words
For each word:
	Generate random number for amount of letters
		For each letter:
			Generate a random index to look up in alphabet string
			assign letter from alphabet string to word string
	    Assign word string to array of words
Return array of words
*/


function aSentance(numWords){
	
	var words = [];
	strAlphabet = "abcdefghijklmnopqrstuvwxyz";
	console.log(numWords);
	for (var i = 0; i < numWords; i++){
  		letters = "";
  		wordSize = Math.floor((Math.random() * 10) + 1);
    	for (var j = 0; j < wordSize; j++){
      		letterIndex = Math.floor(Math.random() * 26);
      		letters += strAlphabet[letterIndex];
    	}
  		words.push(letters);
  	} 
	return words;
}


//console.log(mySentance);
for(var i = 0; i < 10; i++ ){
	mySentance = aSentance(9);
var longestNonsenseWord = longestWord(mySentance);
console.log("The longest random nonsense word is:");
console.log(longestNonsenseWord);
console.log('\n');
}


