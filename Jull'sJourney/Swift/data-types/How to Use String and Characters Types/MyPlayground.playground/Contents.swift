let hello = "Hello"
let entity = "Swift"
var helloWords = hello + ", " + entity
helloWords += "!"
helloWords.count

let number = 3
var combinedString = "You got \(number) star(s)"
for character in combinedString
{
    print(character)
}

helloWords == combinedString
