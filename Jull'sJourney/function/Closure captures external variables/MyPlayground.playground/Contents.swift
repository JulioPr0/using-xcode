//struct Product
//{
//    var price: Int = 0
//}
//
//var firstProduct = Product()
//var secondProduct = Product()
//let closure = {
//    print(firstProduct.price, secondProduct.price)
//}
//closure()
//firstProduct.price = 10
//secondProduct.price = 10
//closure()

//struct Product
//{
//    var price: Int = 0
//}
//var firstProduct = Product()
//var secondProduct = Product()
////let closure = {[firstProduct] in
//let closure = {[product = firstProduct] in
//    print(firstProduct.price, secondProduct.price)
//}
//closure()
//firstProduct.price = 10
//secondProduct.price = 10
//closure()

class Product {
    var price: Int = 0
}

var firstProduct = Product()
var secondProduct = Product()

let closure = { [product1 = firstProduct, product2 = secondProduct] in
    print(product1.price, product2.price)
}
closure()
firstProduct.price = 10
secondProduct.price = 10
closure()
