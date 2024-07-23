func swap( a: inout Double, b: inout Double)
{
    let temporaryA = a
    a = b
    b = temporaryA
}

var myScore = 6.5
var yourScore = 9.0
swap(&myScore, &yourScore)

myScore
yourScore
