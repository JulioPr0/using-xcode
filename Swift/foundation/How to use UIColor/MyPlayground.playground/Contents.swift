import UIKit

UIColor.orange
UIColor.clear

let color = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
let secondColor = UIColor(white: 1.0, alpha: 0.5)
let thirdColor = UIColor(hue: 0.3, saturation: 0.75, brightness: 0.50, alpha: 1.0)
//let image = UIImage()
//let imageColor = UIColor(patternImage: image)

color.cgColor
color.withAlphaComponent(0.5)
let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = thirdColor
