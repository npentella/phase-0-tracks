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

// CHECK IF OBJECTS SHARE KEY VALUE PAIR
// Input: Two objects
// Output: True if there is a shared key/value pair
// Set 'pairMatch' var to false
// For each key in object 1
	// Check each key in object 2 for equivalence
	// If keys and values are equal,
			// set 'pairMatch' var to true

function pairMatch(object1, object2) {
	var pairMatch = false;
	for (var i = 0; i < Object.keys(object1).length - 1; i++) {
		if ((Object.keys(object1)[i] == Object.keys(object2)[i]) && (object1[Object.keys(object1)[i]] == object2[Object.keys(object2)[i]])) {
			pairMatch = true;
		}
	}
	return pairMatch
};

// GENERATE RANDOM TEST DATA

function randomInt(min,max) {
	return Math.floor(Math.random() * (max - min)) + min;
}

// Input: Integer for number of words requested
// Output: Array of random words, ranging from 1 - 10 characters each
// Define alphabet string
// For each word requested
	// generate random word length
	// assign random letters from aphabet string
function wordGenerator(wordCount) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var words = []
	for (var i = 0; i < wordCount; i++) {
		var length = randomInt(1, 11);
		var word = "";
		for (var x = 0; x < length; x++) {
			word += alphabet[randomInt(0, 26)]
		}
		words.push(word)
	}
	return words
}

// DRIVER CODE

var testArray = ["long", "longer", "most long"];
var testArray2 = ["guinea pig", "dog", "cats"]
var testArray3 = ["condo", "apartment", "house"]

console.log(findLongest(testArray));

console.log(findLongest(testArray2));

console.log(findLongest(testArray3));

var cat1 = {
	name: "gomer",
	color: "white",
	age: 9
};

var cat2 = {
	name: "rue",
	color: "black",
	age: 2
};

var cat3 = {
	name: "sophie",
	color: "black",
	age: 8
};

console.log(pairMatch(cat1, cat2));
console.log(pairMatch(cat2, cat3));

for (var i = 0; i < 10; i++) {
	words = wordGenerator(5);
	console.log(words);
	console.log(findLongest(words))
}
