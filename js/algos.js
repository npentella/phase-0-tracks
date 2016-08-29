// FIND THE LONGEST PHRASE

// Input: Array of phrases
// Output: Longest phrase from array
// Set 'longest' variable to empty string
// For each word in array:
	// Count characters
	// If longer than length of 'longest'
		// update 'longest' to current string
// Return 'longest'

function findLongest(phrases) {
	var longest = "";
	for (var i = 0; i < phrases.length; i++) {
		if (phrases[i].length > longest.length) {
			longest = phrases[i]
		}
	}
	return longest
};

// DRIVER CODE

var testArray = ["long", "longer", "most long"];
var testArray2 = ["guinea pig", "dog", "cats"]
var testArray3 = ["condo", "apartment", "house"]

console.log(findLongest(testArray));

console.log(findLongest(testArray2));

console.log(findLongest(testArray3));