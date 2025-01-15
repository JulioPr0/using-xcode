var greeting = "Hello, Objective-C!"
print("#0: \(greeting)")

greeting = "Hello, Swift!"
print("#1: \(greeting)")

var closure = { greeting = "Hello, SwiftUI!" }
print("#2: \(greeting)")

closure
print("#3: \(greeting)")
