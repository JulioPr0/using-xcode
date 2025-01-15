var sum = 0
for i in 1 ... 4
{
    if i == 2
    {
//        continue
        break
    }
    sum += i
}

let time = 6
var description = "It's "
switch time
{
    case 2, 3, 6, 7, 11:
        description += "\(time) o'clock"
        fallthrough
    default:
        description += "."
}
