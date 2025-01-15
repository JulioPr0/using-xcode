import Foundation

let intStr = "28"
Int(intStr)

var message : String = "You got 3 apples"
message.hasSuffix("apples")
message.hasPrefix("You")
message.uppercased()
message.lowercased()
message.capitalized
message.isEmpty
message.components(separatedBy: " ")
message.caseInsensitiveCompare("You got 3 apples").rawValue
message.caseInsensitiveCompare(message.uppercased()).rawValue
message.caseInsensitiveCompare("You got 3 apples.").rawValue
message.contains("apples")
message.distance(from: message.startIndex, to: message.endIndex)
message.lengthOfBytes(using: .utf8)
message.range(of: "got")?.lowerBound
message.range(of: "got")?.upperBound

"侯永城".applyingTransform(StringTransform.toLatin, reverse: false)

message.append(".")
message.append(" Congratulations")
message.insert("!", at: message.endIndex)
message.insert(contentsOf: "Hi, ", at: message.startIndex)

let index = message.index(message.startIndex, offsetBy: 3)
message[..<index]

let startIndex = message.index(message.startIndex, offsetBy: 14)
let endIndex = message.index(message.endIndex, offsetBy: -17)
let range = startIndex ..< endIndex
message[range]
message.replaceSubrange(range, with: "start")
message = "I have 5 stars and you have 5 stars too."
message.replacingOccurrences(of: "starts", with: "apples")

var title = "Interactive Learn Xcode and Swift!"
var startIndexOfTitle = title.index(title.endIndex, offsetBy: -16)
let endIndexOfTitle = title.index(title.endIndex, offsetBy: -6)
let rangeOfTitle = startIndexOfTitle ..< endIndexOfTitle
title.removeSubrange(rangeOfTitle)
title.removeAll()
