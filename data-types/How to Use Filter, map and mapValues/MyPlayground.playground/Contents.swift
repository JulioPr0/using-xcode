import Foundation

let laptops = ["Acer Aspire 5 Slim Laptop": 364.99, "Lenovo Legion 5 Gaming Laptop":999.99,
               "HP 15 Laptop":629.00, "Apple MBP 15-inch Laptop": 1_399.99]
let filteredLaptops = laptops.filter { $0.value > 800.00 }
print("filteredLaptops: \(filteredLaptops)")

let filteredLaptops2 = laptops.filter { $0.key.hasPrefix("Apple") }
print("filteredLaptops: \(filteredLaptops2)")

let groupedLaptops = Dictionary(grouping: laptops.keys) { $0.first! }
print("groupedLaptops: \(groupedLaptops)")

var devices = ["iPhone", "iPad", "iWatch", "iPhone"]
var devicesCounts = [String: Int]()

for device in devices
{
    devicesCounts[device, default: 0] += 1
}
print("devicesCounts: \(devicesCounts)")

let scores = ["Math": 89,
              "Physics": 88,
              "Geography": 78,
              "History": 92]

let doubleScores = scores.mapValues { $0 * 2 }
let roundedCities = scores.mapValues { score -> String in
    "Your score is \(score)."
}
print(doubleScores)
print(roundedCities)

let scores2: [String: String?] = ["Math": "89",
                                  "Physics": "88",
                                  "Geography": "none",
                                  "History": nil]

let compactMapValues = scores2.compactMapValues { $0 }
print(compactMapValues)

let compactMapValues2 = scores2.compactMapValues { Int($0 ?? "") }
print(compactMapValues2)
