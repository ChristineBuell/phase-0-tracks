/*
Function to reverse a string

It takes in a string

For string.length, i >= 0, i--
	newString += string[i];

return newString
If condition met
print newString to console	

*/


function reverseWord(str){

var reversedString = "";
for (var i = str.length -1; i >= 0; i--){
		reversedString += str[i];	
	}
	return reversedString;
}

var outerStr = reverseWord("JavaScript!")

if (outerStr.length > 1){
console.log(outerStr);
}