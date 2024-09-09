enum Language : Int
{
    case Swift = 2
    case ObjectiveC
    case Unknow
    
    func description()
    {
        if self == .Swift
        {
            print("Coding in Swift.")
        }
        else if self == .ObjectiveC
        {
            print("Coding in Objective-C.")
        }
        else if self == .Unknow
        {
            print("Wondering...")
        }
    }
}

let swift = Language.Swift
swift.description()
swift.rawValue
Language.ObjectiveC.rawValue
