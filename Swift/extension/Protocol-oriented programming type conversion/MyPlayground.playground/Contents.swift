protocol Creature
{
    var name: String { get }
    func enjoyFood()
}

struct Dog: Creature
{
    var name: String
    
    func enjoyFood() {
        print("\(name) is enjoying bones.")
    }
}

struct Bird: Creature
{
    var name: String
    
    func enjoyFood()
    {
        print("\(name) is enjoying bugs.")
    }
}

let creatures : [Creature] =
[
    Dog(name: "Baloy"),
    Bird(name: "Nine"),
    Dog(name: "Max"),
    Bird(name: "Bailey"),
    Dog(name: "Toby")
]

for creature in creatures
{
    creature.enjoyFood()
}
