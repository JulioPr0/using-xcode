let time = 7
var message = ""

switch time {
    case 7:
        message = "It's time to get up."
        fallthrough
    case 8, 12, 18:
        message = "It's time for eating."
    case let x where x > 18 && x <= 24:
        message = "Happy time."
    case 1...6:
        message = "It's time for rest"
    default:
        message = "It's not a special time."
}
