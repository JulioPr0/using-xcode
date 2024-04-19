var a = 1.5
var b : Float = 2.5
var c = Float.infinity

var d : Double = 3.5
d + 3.4
d - 0.9
d * 2.0
d / 4
d.addProduct(2.0, 4.0)
d.advanced(by: 1.1)
d.distance(to: 16.0)

var e = 24.0
e.significand
e.exponent
e.binade
e.bitPattern
e.description
e.isFinite
e.isLess(than: 6.0)
e.isLessThanOrEqualTo(6.0)
e.isNaN
e.isZero
e.magnitude
e.negate()
e.negate()

12.5.rounded(.down)
-12.5.rounded(.down)

12.5.rounded(.up)
-12.5.rounded(.up)

12.5.rounded(.awayFromZero)
-12.5.rounded(.awayFromZero)

12.5.rounded(.towardZero)
-12.5.rounded(.towardZero)

12.2.rounded(.toNearestOrAwayFromZero)
12.5.rounded(.toNearestOrAwayFromZero)
-12.2.rounded(.toNearestOrAwayFromZero)
-12.5.rounded(.toNearestOrAwayFromZero)

13.2.rounded(.toNearestOrEven)
13.5.rounded(.toNearestOrEven)
12.5.rounded(.toNearestOrEven)

14.0.truncatingRemainder(dividingBy: 3.0)
14.0.remainder(dividingBy: 3.0)
