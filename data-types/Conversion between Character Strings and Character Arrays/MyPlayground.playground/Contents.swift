import Foundation

let sourceString = "www.websitejulio.com"
let splittedArray = sourceString.split { $0 == "." }
print(splittedArray)

let splittedArray2 = sourceString.split(separator: ".")
print(splittedArray2)

let splittedArray3 = sourceString.split { $0.isNumber }
print(splittedArray3)

let joinedString = splittedArray.joined()
print(joinedString)

let joinedString2 = splittedArray.joined(separator: ".")
print(joinedString2)

let urlArray = ["host", "siteName", "siteType"]
print(urlArray)

let zippedOne = zip(urlArray, splittedArray)
for (label, value) in zippedOne
{
    print("\(label): \(value)")
}
