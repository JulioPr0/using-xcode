let binaryBits : UInt8 = 0b00101011
let invertBinaryBits = ~binaryBits      //ob11010100

let firstBits : UInt8 = 0b11111100
let lastBits :UInt8 = 0b00111111
let resultBits = firstBits & lastBits   //0b00111100
let outputBits = firstBits ^ lastBits

let shiftBits : UInt8 = 4  //0b100
shiftBits << 2             //0b10000
shiftBits << 4             //0b1000000
shiftBits >> 2             //ob1

var potentialOverflow = Int16.max
potentialOverflow &+ 2

let x = 1
let y = x & 1
