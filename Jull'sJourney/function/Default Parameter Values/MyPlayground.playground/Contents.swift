import UIKit

func getDistance(startPoint: CGPoint, endPoint: CGPoint = CGPoint(x: 0, y: 0)) -> CGFloat
{
    let xDist = endPoint.x - startPoint.x
    let yDist = endPoint.y - startPoint.y
    
    return sqrt(xDist * xDist + yDist * yDist)
}

let point1 = CGPoint(x: 10, y: 10)
let point2 = CGPoint(x: 20, y: 20)
getDistance(startPoint: point2, endPoint: point1)
getDistance(startPoint: point2)
