protocol Creature
{
    var name: String { get }
    func enjoyFood()
}

protocol Flyable
{
    func fly()
}

extension Flyable
{
    func fly()
    {
        print("I'm flying...")
    }
}

class Fish: Creature
{
    var name: String = ""
    
    func enjoyFood()
    {
        print("\(name) is enjoying fish food.")
    }
}

class SailfinFlyingFish: Fish, Flyable
{

}

class Bird: Creature, Flyable
{
    var name: String = ""
    
    func enjoyFood() {
        print("\(name) is enjoying bugs.")
    }
    
    
}

let flyingFish = SailfinFlyingFish()
let bird = Bird()

flyingFish.fly()
bird.fly()
