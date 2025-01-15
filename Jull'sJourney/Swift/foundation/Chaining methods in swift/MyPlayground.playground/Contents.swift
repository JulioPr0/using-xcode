class AppleShop
{
    var profit = 0
    
    func selliPad() -> AppleShop
    {
        profit += 400
        return self
    }
    func selliPhone() -> AppleShop
    {
        profit += 600
        return self
    }
    func sellMacbook() -> AppleShop
    {
        profit += 900
        return self
    }
}

let shop = AppleShop()
shop.selliPad().selliPhone().sellMacbook()
shop.profit

shop.selliPad()
    .selliPhone()
    .sellMacbook()
shop.profit
