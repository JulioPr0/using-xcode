class Creature
{
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog: Creature
{
    var master: String
    init(name: String, master: String)
    {
        self.master = master
        super.init(name: name)
    }
}

let creatures:[Creature] =
[
    Dog(name: "Nono", master: "John"),
    Dog(name: "Bailey", master: "Smith"),
    Dog(name: "Tony", master: "Bill")
]

for object in creatures
{
    let dog = object as! Dog
    print("Dog: '\(dog.name)', belogs to \(dog.master)")
}

for dog in creatures as! [Dog]
{
    print("Dog: '\(dog.name)', belogs to \(dog.master)")
}
