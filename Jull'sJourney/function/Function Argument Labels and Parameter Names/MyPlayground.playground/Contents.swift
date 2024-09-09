import UIKit

func getDistance(startPoint point1: CGPoint, endPoint point2: CGPoint) -> CGFloat {
    let xDistance = point2.x - point1.x
    let yDistance = point2.y - point1.y
    return sqrt(xDistance * xDistance + yDistance * yDistance)
}

let point1 = CGPoint(x: 0, y: 0)
let point2 = CGPoint(x: 10, y: 10)
let distance = getDistance(startPoint: point1, endPoint: point2)
print("Distance: \(distance)")

func getDistance2(startPoint: CGPoint, endPoint: CGPoint) -> CGFloat
{
    let xDistance = endPoint.x - startPoint.x
    let yDistance = endPoint.y - startPoint.y
    return sqrt(xDistance * xDistance + yDistance * yDistance)
}
getDistance2(startPoint: point1, endPoint: point2)
