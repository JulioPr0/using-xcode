struct Sundae { }
struct Pancakes { }
struct BlueberryCobbler { }

struct SweetieHouse {
    var totalIncome = 0
    
    mutating func sell(product: Sundae) {
        print("Income 10 dollars")
        self.totalIncome += 10
        print("Total income: \(self.totalIncome)")
    }
    
    mutating func sell(product: Pancakes) {
        print("Income 20 dollars")
        self.totalIncome += 20
        print("Total income: \(self.totalIncome)")
    }
    
    mutating func sell(product: BlueberryCobbler) {
        print("Income 30 dollars")
        self.totalIncome += 30
        print("Total income: \(self.totalIncome)")
    }
}

var shop = SweetieHouse()
shop.sell(product: Sundae())
shop.sell(product: Pancakes())
shop.sell(product: BlueberryCobbler())
