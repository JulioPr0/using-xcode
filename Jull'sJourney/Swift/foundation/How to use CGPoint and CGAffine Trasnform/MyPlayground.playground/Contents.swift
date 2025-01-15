import UIKit
import QuartzCore

let zeroPoint = CGPoint.zero

var point = CGPoint()
point.x
point.y
point.debugDescription
point.equalTo(CGPoint(x: 0, y: 0))

var secondPoint = CGPoint(x: 10, y: 10)
let transformL: CGAffineTransform = CGAffineTransform.identity
let moveTransform = transformL.translatedBy(x: 10, y: 10)
let thirdPoint = secondPoint.applying(moveTransform)

let rotateTransform = moveTransform.rotated(by: 90 * 3.1415/180.0)
let fouthPoint = thirdPoint.applying(rotateTransform)

let pointFromString = NSCoder.cgPoint(for: "{100, 100}")
