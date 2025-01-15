var number = 0
if (true)
{
    number = 1
}

if number == 1
{
    number; 2
}

if number > 1 && number < 4
{
    number = 3
}

if number > 1
{
    if number < 5
    {
        number = 4
    }
}
else
{
    number = -1
}

var optionalName : String? = "Swift!"
var greeting = "Hello"
if let name = optionalName
{
    greeting = "Hello, \(name)"
}
greeting
