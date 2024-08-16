extension Array where Element: Equatable
{
    static func ==(leftArray: Array<Element>, rightArray: Array<Element>) -> Bool
    {
        if leftArray.count != rightArray.count
        {
            return false
        }
        
        for x in 0 ..< leftArray.count
        {
            if leftArray[x] != rightArray[x]
            {
                return false
            }
        }
        return true
    }
}

let firstArray = [1, 2, 3]
let secondArray = [1, 2, 3, 4]
firstArray == secondArray
