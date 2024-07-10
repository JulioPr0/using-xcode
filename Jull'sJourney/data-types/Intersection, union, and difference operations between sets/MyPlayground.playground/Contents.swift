import  Foundation

var scores : Set<Int> = Set<Int>()
print(scores)

var animals : Set<String> = ["Tiger", "Giraffe", "Zebra"]
print(animals)

let array = ["iPhone", "iPad", "iPhone"]
let set = Set(array)
print(set)

animals.isEmpty
animals.count
animals.first
let sortedArray : Array = animals.sorted()

//for animals in animals
//{
//    print("\(animal)")
//}

//animals.insert("Lion")
//print(animals)
//
//animals.removeFirst()
//print(animals)
//
//animals.dropLast()
//print(animals)
//
//animals.remove(at: animals.index(animals.startIndex, offsetBy: 2))
//print(animals)
//
//animals.remove("Zebra")
//print(animals)
//
//animals.removeAll()
//print(animals)

var animalGroup1 : Set<String> = ["Tiger", "Giraffe", "Zebra"]
print(animalGroup1)
var animalGroup2 : Set<String> = ["Lion", "Zebra", "Deer"]
print(animalGroup2)

animalGroup1 == animalGroup2
animalGroup1.union(animalGroup2)

animalGroup1.intersection(animalGroup2)
print(animalGroup1)

animalGroup1.subtract(animalGroup2)
print(animalGroup1)

animalGroup1.isSubset(of: animalGroup2)
animalGroup1.isSuperset(of: animalGroup2)
animalGroup1.isDisjoint(with: animalGroup2)
