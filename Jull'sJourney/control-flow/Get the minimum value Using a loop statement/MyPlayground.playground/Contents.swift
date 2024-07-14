let cardNumbers = [
    "Clubs": [22, 31, 54, 71, 11, 13],
    "Hearts": [67, 101, 23, 34, 51, 28],
    "Square": [122, 41, 9, 16, 25]
]

var min = 1000
for (_, numbers) in cardNumbers
{
    for number in numbers {
        if number < min {
         min = number
        }
    }
}
min
