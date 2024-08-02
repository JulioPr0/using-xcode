struct Animal
{
    var name: String = ""
    var age: Int = 0
    private(set) var weight : Double
    
    func say()
    {
        print("I am \(name).")
    }
}

//var animal = Animal(name: "Tiger", age: 2)
var animal = Animal(name: "Tiger", age: 2, weight: 20)
animal.say()
var animal2 = animal
animal2.name = "Bird"
print(animal2)
print(animal)

animal.weight
//animalweight = 10

struct MySubscript
{
    var num:Int
    subscript(n: Int) -> Int
    {
        return num * n
    }
}
let subscr = MySubscript(num: 5)
subscr[2]
