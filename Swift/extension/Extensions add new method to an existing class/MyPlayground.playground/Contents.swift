import UIKit

struct Point
{
    var x = 0.0
    var y = 0.0
}

extension Point
{
    func distance(anotherPoint: Point) -> Double
    {
        let distanceX = anotherPoint.x - self.x
        let distanceY = anotherPoint.y - self.y
        
        return sqrt(distanceX * distanceX + distanceY * distanceY)
    }
}

let startPoint = Point(x: 0.0, y: 0.0)
let endPoint = Point(x: 10.0, y: 10.0)
startPoint.distance(anotherPoint: endPoint)
