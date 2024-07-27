func getDiscountPrice(price: Double?, by discount: Double?) -> Double?
{
//    if price == nil
//    {
//        return nil
//    }
//    if discount == nil
//    {
//        return nil
//    }
//    if discount! < 0 || discount! > 1
//    {
//        return price
//    }
//    return price! * discount!
    
    guard let price = price, let discount = discount, discount > 0 &&
        discount < 1 else {
        return nil
    }
    
    return price * discount
}
