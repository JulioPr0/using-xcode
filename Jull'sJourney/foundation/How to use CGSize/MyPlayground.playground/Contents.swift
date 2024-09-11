import UIKit

let zeroSize = CGSize.zero
let size = CGSize(width: 20, height: 10)
size.width
size.height
size.debugDescription

let transform:CGAffineTransform = CGAffineTransform.identity
let moveTransform = transform.translatedBy(x: 10, y: 10)
let secondSize = size.applying(moveTransform)

let rotateTransform = moveTransform.scaledBy(x: 2.0, y: 1.0)
let thirdSize = size.applying(rotateTransform)

thirdSize.equalTo(size)
thirdSize.equalTo(CGSize(width: 40, height: 10))

let fifthSize = NSCoder.cgSize(for: "{}")
