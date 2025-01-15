import Foundation

//let cannotBeNegative : UInt8 = -1
//let tooBig : UInt8 = UInt8.max + 1

let oneThousand :UInt16 = 1000
let _oneThousand : UInt16 = 1_000

//let oneHundread : UInt8 = 1000
let oneHundred : UInt8 = 100
let _oneHundred : UInt8 = 0_100
//let result = oneThousand + oneHundred
let result = oneThousand + UInt16(oneHundred)

let two = 2
let pi = 3.1415
let totalDouble = Double(two) + pi
let totalInt = two + Int(pi)

let ageString = "35"
let ageInt = Int(ageString)
let ageDouble = Double(ageString)
let message1 = "I'm "+String(describing: ageInt)+" years old."
let message2 = "I'm "+ageInt!.description+" years old."
let message3 = "I'm \(ageInt!) years old."
