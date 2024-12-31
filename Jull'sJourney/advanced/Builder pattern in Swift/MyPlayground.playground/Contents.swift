struct ProductBuilder
{
    var code: String
    var name: String
    var brand: String
    var category: String
    
    var size: Double
    var netWeight: Double
    var price: Double
}

struct Product
{
    var code: String
    var name: String
    var brand: String
    var category: String
    
    var size: Double
    var netWeight: Double
    var price: Double
    
    init(builder: ProductBuilder)
    {
        code = builder.code
        name = builder.name
        brand = builder.brand
        category = builder.category
        
        size = builder.size
        netWeight = builder.netWeight
        price = builder.price
    }
    
    func store()
    {
        
    }
    
    func sell()
    {
        
    }
}

let builder = ProductBuilder(code: "5001", name: "iPhone", brand: "Apple", category: "Mobile", size: 6.5, netWeight: 208.5, price: 8500.0)

let product = Product(builder: builder)
