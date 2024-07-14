func reverseNumber(number : Int) -> Int
{
    var numberShadow : Int = 0
    var result : Int = 0
    
    numberShadow = number
    while true
    {
        result = result * 10 + numberShadow % 10
        numberShadow = numberShadow / 10
        if numberShadow == 0
        {
            break
        }
    }
    return result
}
let result = reverseNumber(number: 12345)
result
