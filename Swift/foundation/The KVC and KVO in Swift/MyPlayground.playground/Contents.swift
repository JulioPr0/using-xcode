import Foundation

//struct Product
//{
//    var brand : String
//}
//
//var product = Product(brand: "Apple")
//let brand = \Product.brand
//
//product[keyPath: brand] = "Microsoft"
//let valueOfName = product[keyPath: brand]

class Product: NSObject
{
    @objc dynamic var brand: String = ""
    var observation: NSKeyValueObservation?
    
    override init()
    {
        super.init()
        
        observation = self.observe(\Product.brand, options: [.new, .old]) {
            (_, change) in
            print("change.oldValue: \(change.oldValue ?? "")")
            print("change.newValue: \(change.newValue ?? "")")
        }
        print(#function)
    }
    deinit
    {
        print(#function)
    }
}

var product: Product? = Product()
product?.brand = "Apple"
