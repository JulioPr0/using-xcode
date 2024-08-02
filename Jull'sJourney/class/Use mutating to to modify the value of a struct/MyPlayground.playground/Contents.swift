struct BookStore
{
    var numberOfBooks: Int
    
    init(numberOfBooks: Int = 0)
    {
        self.numberOfBooks = numberOfBooks
    }
    
    mutating func sell()
    {
        if numberOfBooks > 0
        {
            numberOfBooks -= 1
        }
    }
}

var bookStore = BookStore(numberOfBooks: 100)
bookStore.sell()
bookStore.numberOfBooks
