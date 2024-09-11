import UIKit

let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
rect.debugDescription

let origin = CGPoint.zero
let size = CGSize(width: 100, height: 100)
let secondRect = CGRect(origin: origin, size: size)
secondRect.origin.x
secondRect.origin.y
secondRect.size.width
secondRect.size.height
secondRect.width
secondRect.height
secondRect.minX
secondRect.maxX
secondRect.minX
secondRect.maxY
secondRect.contains(CGPoint(x: 10, y: 10))
secondRect.contains(CGRect(x: 0, y: 0, width: 50, height: 50))
secondRect.equalTo(rect)
secondRect.insetBy(dx: 10, dy: 10)
secondRect.intersection(CGRect(x: 40, y: 40, width: 100, height: 20))
secondRect.intersects(CGRect(x: 80, y: 0, width: 100, height: 100))
secondRect.offsetBy(dx: 10, dy: 10)
secondRect.union(CGRect(x: 50, y: 50, width: 100, height: 100))

NSCoder.cgRect(for: "{{0, 0}, {100, 100}}")
