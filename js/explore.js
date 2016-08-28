// REVERSE FUNCTION
// INPUT: a string, ie "hello"
// OUTPUT: a string with reversed characters, ie "olleh"
// Start at index -1 of inputed string
// Add each character to new string and move to next negative index

function reverse(string) {
	var reversedString = "";
	for (var i = string.length - 1; i >= 0; i--) {
		reversedString += string[i];
	}
	return reversedString;
}

// DRIVER CODE

var testString = "Hello"

console.log(reverse(testString));

var reversedString = reverse(testString)

var havingFun = true

if (havingFun) {
	console.log(reversedString)
}