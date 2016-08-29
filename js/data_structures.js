var colors = ["maize", "blue", "white", "gray"];

var names = ["Gomer", "Bert", "Jesse", "Kaileigh"];

colors.push("green")

names.push("Sharpy")

horseData = {}

// Color Assigner
// For each name
// Assign color with matching index #
// Add to object

for (var i = 0; i < names.length; i++) {
	horseData[names[i]] = colors[i]
}

// Driver Code
console.log(colors)
console.log(names)
console.log(horseData)