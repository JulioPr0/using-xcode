import Foundation

let sourceArray = [1, 2, 3, 4, 5, 3]

let prefixFilterArray = sourceArray.prefix { $0 < 4 }
print(prefixFilterArray)

let prefixUptoArray = sourceArray.prefix(upTo: 3)
print(prefixUptoArray)

let prefixArray = sourceArray.prefix(2)
print(prefixArray)

let prefixThroughArray = sourceArray.prefix(through: 2)
print(prefixThroughArray)

let dropArray = sourceArray.drop { $0 < 4 }
print(dropArray)

let dropFirstArray = sourceArray.dropFirst(3)
print(dropFirstArray)

let dropLastArray = sourceArray.dropLast(3)
print(dropLastArray)
