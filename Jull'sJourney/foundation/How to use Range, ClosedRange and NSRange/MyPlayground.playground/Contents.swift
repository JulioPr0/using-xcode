import Foundation

let closedRange: ClosedRange = 1...3

let intArray = ["1", "2", "3", "4", "5"]
intArray[closedRange]

let halfOpenRange: Range = 1..<3
intArray[halfOpenRange]

var myUrl = "julio.com"
let startIndex = myUrl.index(myUrl.startIndex, offsetBy: 0)
let endIndex = myUrl.index(myUrl.startIndex, offsetBy: 5)
let myRange = startIndex..<endIndex
myUrl[myRange]

let range = NSRange.init(location: 1, length: 2)
intArray[Range.init(range)!]

let myWebsite = myUrl as NSString
myWebsite.substring(with: NSRange.init(location: 0, length: 5))
