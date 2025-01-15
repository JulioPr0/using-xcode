func getRandomNumber() -> some Equatable
{
    return Int.random(in: 1 ... 2)
}

let firstRandom = getRandomNumber()
let secondRandom = getRandomNumber()

if firstRandom == secondRandom
{
    print("What a surprise!")
}
