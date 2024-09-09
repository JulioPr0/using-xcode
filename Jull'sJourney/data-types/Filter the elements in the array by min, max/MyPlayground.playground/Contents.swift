import Foundation

var sourceArray = [1, 2, 3, 4, 5, 6, -8]

let minElement = sourceArray.min()
minElement

let minElementByFilter = sourceArray.min { $0 % 2 < $1 % 2 }
minElementByFilter

let maxElement = sourceArray.max()
maxElement

let maxElementByFilter = sourceArray.max() { abs($0) < abs($1) }
maxElementByFilter

let sourceDictionary = ["physicsScore": 87, "MathScore": 79,
                        "chemisteryScore": 92]
print(sourceDictionary)

let maxScore = sourceDictionary.max { $0.value < $1.value }
maxScore
