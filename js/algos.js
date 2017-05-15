


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
var wordArray = ["pie", "cake", "fruit", "tiramisu", "danish","cookies"];
var theLongestWord = longestWord(wordArray)
console.log(theLongestWord)
