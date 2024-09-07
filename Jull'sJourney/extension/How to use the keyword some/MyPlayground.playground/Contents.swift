var httpCode:(Int, String) = (404, "Not Found")
//switch httpCode
//{
//    case let (code, _) where code >= 200 && code < 300 :
//        print("Request ok.")
//    default:
//        print("Bad request.")
//}
//
//let actScores = [24, 32, 30, 36, 28, 33]
//
//for score in actScores where score >= 31
//{
//    print("\(score) is passed for Ivy League.")
//}
//
//actScores.forEach
//{
//    switch $0
//    {
//        case let x where x >= 31:
//            print("Passed for Ivy League.")
//        default:
//            print("Not passed for Ivy League.")
//    }
//}

//enum HTTPError : Error
//{
//    case code(Int)
//}
//
//func requestWithError() throws
//{
//    throw HTTPError.code(400)
//}
//
//do
//{
//    try requestWithError()
//}
//catch HTTPError.code(let code) where code == 408
//{
//    print("Request time out.")
//}

func getDecodableResult<Element>(element : Element) where Element : Decodable
{
    print(element)
}

protocol IncreaseByDegrees
{
    associatedtype Iterator : IteratorProtocol
    associatedtype SubSequence : Sequence where SubSequence.Iterator.Element == Iterator.Element
}

extension IncreaseByDegrees where Self : Equatable
{
    
}
