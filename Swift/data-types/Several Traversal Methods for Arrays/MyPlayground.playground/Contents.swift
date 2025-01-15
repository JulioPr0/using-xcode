import Foundation

var fruit = ["Apple", "Banana", "Pear"]

//for i in 0..<fruit.count
//{
//    print(fruit[i])
//}
//
//for item in fruit
//{
//    print(item)
//}
//
//for element in fruit where element.hasPrefix("B")
//{
//    print(element)
//}

//for (index, value) in fruit.enumerated()
//{
//    print("\(index): \(value)")
//}

//fruit.forEach { element in
//    print(element)
//}

var fruitGroup2 = ["Watermelon", "Apple", "Pear"]
print(fruitGroup2)

let differences = fruitGroup2.difference(from: fruit)
print(differences)
