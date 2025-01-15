import Foundation

prefix func ++ (parameter: inout Int)
{
    parameter += 1
}
var number = 1
++number

postfix func -- (parameter: inout Int)
{
    parameter -= 1
}
var number2 = 1
number2--

/// infix operators: = - + * % < >! & | ^. ~
infix operator ~~
func ~~(fromNumber: Int, toNumber: Int) -> Int
{
    var total = 0
    for i in stride(from: fromNumber, to: toNumber + 1, by: 1)
    {
        total = total + i
    }
    return total
}
1 ~~ 100
