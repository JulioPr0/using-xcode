import UIKit

func appendTOIntArray(array:[Int], toArray:inout [Int])
{
    for item in array
    {
        toArray.append(item)
    }
}

var array = [1, 2, 3]
appendTOIntArray(array: [4, 5, 6], toArray: &array)

func appendToStringArray(array:[String], toArray:inout [String])
{
    for item in array
    {
        toArray.append(item)
    }
}

var arrayString = ["Objective-C", "Java"]
appendToStringArray(array: ["Swift", "Python"], toArray: &arrayString)

func appendToGenericArray<T>(array:[T], toArray:inout [T])
{
    for item in array
    {
        toArray.append(item)
    }
}

var anotherIntArray = [1, 2, 3]
appendToGenericArray(array: [4, 5, 6], toArray: &anotherIntArray)

var anotherStringArray = ["Objective-C", "Java"]
appendToGenericArray(array: ["Swift", "Python"], toArray:
                        &anotherStringArray)

var anotherCGPointArray = [CGPoint(x: 0, y: 0), CGPoint(x: 10, y: 10)]
appendToGenericArray(array: [CGPoint(x: 20, y: 20), CGPoint(x: 30, y: 30)], 
                     toArray: &anotherCGPointArray)

func swapTwoElements<T>(_ nums: inout [T], _ p: Int, _ q: Int)
{
    (nums[p], nums[q]) = (nums[q], nums[p])
}
var nums = [1, 2, 3, 4]
swapTwoElements(&nums, 0, 3)
