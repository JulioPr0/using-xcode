import UIKit

let string = NSString(string: "meet")
let floatString = NSString(format: "%f", 25.0)

var secondString = string.appending(" coolketang")

let capitalizedString = secondString.capitalized
let comparison1 = secondString.caseInsensitiveCompare("test").rawValue
let comparison2 = secondString.caseInsensitiveCompare("meet coolketang.").rawValue
let comparison3 = secondString.compare("meet coolketang.").rawValue
let comparison4 = secondString.caseInsensitiveCompare("coolketang").rawValue

let commonPrefix = secondString.commonPrefix(with: "meet swift.")
let containsCoolketang = secondString.contains("coolketang")
let dataUtf8 = secondString.data(using: .utf8)
let hasPrefixMeet = secondString.hasPrefix("meet")
let hasSuffixCoolketang = secondString.hasSuffix("coolketang.")

secondString.insert(".", at: secondString.endIndex)

let lengthOfBytes = secondString.lengthOfBytes(using: .utf8)
let characterCount = secondString.count

let lowercasedString = secondString.lowercased()
let uppercasedString = secondString.uppercased()

if let range = secondString.range(of: "meet") {
    let lowerBound = range.lowerBound
    let upperBound = range.upperBound
}

if let meetRange = secondString.range(of: "meet") {
    secondString.removeSubrange(meetRange)
}

let replacedString = secondString.replacingOccurrences(of: "coolketang", with: "swift")

let secondCharacter = secondString[secondString.index(secondString.startIndex, offsetBy: 1)]
