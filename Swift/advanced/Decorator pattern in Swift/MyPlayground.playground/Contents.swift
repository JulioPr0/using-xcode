protocol Weapon
{
    var damage: Int { get }
}

protocol Decorator: Weapon
{
    var component: Weapon { get }
    init(_ component: Weapon)
}

struct Axe: Weapon
{
    var damage: Int
}

struct RoyalDiamond: Decorator
{
    var damage: Int
    {
        return component.damage + 72
    }
    var component: Weapon
    init(_ component: Weapon)
    {
        self.component = component
    }
}

struct MarquiseRuby: Decorator
{
    var damage: Int
    {
        return component.damage + 48
    }
    var component: Weapon
    init(_ component: Weapon)
    {
        self.component = component
    }
}
MarquiseRuby(RoyalDiamond(Axe(damage: 80))).damage
