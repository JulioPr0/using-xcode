@dynamicMemberLookup
struct Product
{
    subscript(dynamicMember member: String) -> String
    {
        let properties = ["brand": "Apple", "name": "iPhone"]
        return properties[member, default: ""]
    }
    
    subscript(dynamicMember member: String) -> Int
    {
        return 8800
    }
    
    subscript(dynamicMember member: String) -> (_ input: Double) -> Double
    {
        return { input in
            return 8800.0 * input
        }
    }
}

let product = Product()
let brand : String = product.brand
let name : String = product.name
let manufacturer : String = product.manufacturer
let price : Int = product.price
let discount : (Double) -> Double = product.discount
discount(0.8)
