enum ErrorType: Error
{
    case invalidProduct
    case insufficientCoins(coinsNeeded: Int)
    case outOfStock
}

struct Product
{
    var price: Int
    var count: Int
}

var totalCoins = 20

class Shop
{
    var product =
    [
        "Pudding": Product(price: 12, count: 7),
        "Donut": Product(price: 10, count: 4),
        "Cheesepuff": Product(price: 7, count: 11)
    ]
    
    func sell(productName: String) throws
    {
        guard let product = product[productName] else
        {
            throw ErrorType.invalidProduct
        }
        
        guard product.count > 0 else
        {
            throw ErrorType.outOfStock
        }
        
        guard product.price <= totalCoins else
        {
            throw ErrorType.insufficientCoins(coinsNeeded: product.price - totalCoins)
        }
        
        totalCoins -= product.price
        
        var newItem = product
        newItem.count -= 1
        self.product[productName] = newItem
        
        print(">>>>>> \(productName)")
    }
}

var shop = Shop()

do
{
//    try shop.sell(productName: "Apple")
    try shop.sell(productName: "Pudding")
    try shop.sell(productName: "Pudding")
}
catch ErrorType.invalidProduct
{
    print("Invalid product.")
}
catch ErrorType.outOfStock
{
    print("Out of Stock.")
}
catch ErrorType.insufficientCoins(let coinsNeeded)
{
    print("Need an additional \(coinsNeeded) coin(s).")
}
