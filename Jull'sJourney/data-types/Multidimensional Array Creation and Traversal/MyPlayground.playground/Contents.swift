import Foundation

var numberArray1 = [1, 2, 3]
print(numberArray1)

var numberArray2 = [4, 5, 6, 7]
print(numberArray2)

var numberArray = [numberArray1, numberArray2]
print(numberArray)

var newArray = Array<Array<Int>>()
print(newArray)
newArray.append(numberArray1)
print(newArray)
newArray.append(numberArray2)
print(newArray)

for subArray in newArray
{
    for num in subArray
    {
        print(num)
    }
}
