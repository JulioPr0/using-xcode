func sayHelloSwift()
{
    print("Hello, Swift!")
}
sayHelloSwift()

func sayHello(to: String)
{
    print("hello, \(to)!")
}
sayHello(to: "Xcode")

func saySomething() -> String
{
    return "Hello, SwiftUI!"
}
print(saySomething())

func sayGreeting(to: String) -> String
{
    return "Hi, \(to)!"
}
print(sayGreeting(to: "Apple"))
