func calculate(string: String) -> (vowels: Int, consonants: Int, others: Int)
{
    var vowels = 0
    var consonants = 0
    var others = 0
    for character in string
    {
        switch String(character).lowercased()
        {
            case "a", "e", "i", "o", "u":
                vowels += 1
            case "b", "c", "d", "f", "g", "h", "j",
                 "k", "l", "m", "n", "p", "q", "r",
                 "s", "t", "v", "w", "x", "y", "z":
                consonants += 1
        default:
            others += 1
        }
    }
    return(vowels, consonants, others)
}
calculate(string: "Hello, Swift!")
