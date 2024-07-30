enum Orientation
{
    case North
    case South
    case East
    case West
}
Orientation.South

enum Fruit
{
    case Apple, Banana, Orange, Peach, Watermelon
}
var myFavorite = Fruit.Apple
myFavorite = .Orange

let somePlanet = Orientation.East
switch somePlanet
{
case .East:
        print("Where the sun rises.")
    default:
        print("Where the sun doesn't rise")
}

enum ASCICharacter: Character
{
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}
ASCICharacter.Tab
