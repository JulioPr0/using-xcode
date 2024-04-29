import Foundation

let demoString = "Charlie: \"which programming language should i learn?\" Chris: \"Swift! of course!\""
print(demoString)

let demoString2 = #"Charlie: "which programming language should i learn?" Chris: "Swift! of course!""#
print(demoString2)

struct Product
{
    var brand : String
}
let product = Product(brand: "Apple")
let demoString3 = #"Charlie: "which programming language should i learn?" Chris: "\#(product.brand)'s Swift! of course!""#
print(demoString3)

let demoString4 = ##"Leo: My room is: "floor #4 room #1""##
print(demoString4)

let demoString5 = """
    Mom, there are no words
    that can possibly express
    how much you mean to me
    and how much trust I feel for you.
    you've given up so much for me,
    more than I deserve.
    no matter how bad it gets
    I can always count on your.
    """
print(demoString5)
