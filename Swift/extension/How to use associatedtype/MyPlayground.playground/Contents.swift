protocol AbstractStack
{
    associatedtype ItemType
    mutating func push(_ item: ItemType)
}

struct IntStack: AbstractStack
{
    typealias ItemType = Int
    var items = [ItemType]()
    
    mutating func push(_ item: ItemType)
    {
        items.append(item)
    }
}

struct StringStack: AbstractStack
{
    typealias ItemType = String
    var items = [ItemType]()
    
    mutating func push(_ item: ItemType)
    {
        items.append(item)
    }
}

var intStack = IntStack()
intStack.push(1)
intStack.push(2)
intStack.items

var stringStack = StringStack()
stringStack.push("one")
stringStack.push("two")
stringStack.items
