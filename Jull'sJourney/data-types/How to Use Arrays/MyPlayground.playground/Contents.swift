import Foundation

var stringSrray = Array<String>()
var floatArray = [Float]()
var intArray = [1, 2 , 3 , 4, 5]
intArray.count
intArray.isEmpty
intArray.contains(5)
intArray.first
intArray.last
intArray.max()
intArray.min()
intArray.reverse()
print(intArray)
intArray.swapAt(1, 2)
print(intArray)
intArray.shuffled()
print(intArray)

intArray += [7]
print(intArray)
intArray.append(8)
print(intArray)
intArray[2...4] = [9, 10]
print(intArray)
print(intArray)
intArray[2] = 11
print(intArray)
intArray.insert(20, at: 4)
print(intArray)

//intArray.dropFirst()
//print(intArray)
//intArray.popLast()
//print(intArray)
//intArray.remove(at: 1)
//print(intArray)
//intArray.removeAll()
//print(intArray)

var nickNames = ["Jerry Lee", "Jimmy", "Smith", "John", "Stone", "Tiger"]
nickNames.removeAll { $0.hasPrefix("J") }
print(nickNames)

intArray.sort()
print(intArray)
intArray.sort(by: {$0 > $1})
print(intArray)

var wordArray = ["Swift", "Mac", "iPad", "Objective-C", "SwiftUI"]
print(wordArray)
wordArray.sort(by: { leftOne, rightOne in
    return leftOne.count < rightOne.count
})
print(wordArray)
