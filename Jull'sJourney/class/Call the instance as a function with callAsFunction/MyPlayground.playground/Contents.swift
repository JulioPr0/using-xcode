struct Accumulator
{
    let fromNumber: Int
    let toNumber: Int
    
    func callAsFunction(step: Int) -> Int
    {
        var total = 0
        for i in stride(from: fromNumber, to: toNumber, by:step)
        {
            total = total + 1
        }
        return total
    }
}

let calculator = Accumulator(fromNumber: 1, toNumber: 10)
calculator(step: 2)
