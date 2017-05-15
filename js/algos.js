

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


/* Random words function

Pass in integer for amount of words



*/


function aSentance(numWords){
	//numWords = 3;
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


