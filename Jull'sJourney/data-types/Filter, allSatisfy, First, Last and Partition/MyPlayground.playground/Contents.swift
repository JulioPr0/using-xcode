import Foundation

var nickNames = ["Jerry Lee", "Jimmy", "Smith", "John", "Stone", "Tiger"]
nickNames = nickNames.filter { $0.hasPrefix("J") }
print(nickNames)

var myScores = [66, 80, 93, 74, 89, 80]
print(myScores)

let isPassed = myScores.allSatisfy({ $0 > 60 })
print(isPassed)

let firstNumberOver80 = myScores.first(where: { $0 > 80 })
firstNumberOver80

let lastNumberOver80 = myScores.last(where: { $0 > 80 })
lastNumberOver80

let firstIndex80 = myScores.firstIndex(of: 80)

let lastIndexOf80 = myScores.lastIndex(of: 80)

let firstIndexBiggerThan90 = myScores.firstIndex(where: { $0 > 90 })
firstIndexBiggerThan90

let partitionScores = myScores.partition { $0 > 80 }
partitionScores
print(myScores)
