class Missile
{
    var type: String
    var isActive: Bool
    
    init(type: String, isActive: Bool)
    {
        self.type = type
        self.isActive = isActive
    }
    
    func launch()
    {
        print("Missle type: \(type)")
        isActive = true
    }
}

class MissileWarehouse {
    var missiles = [String: Missile]()
    func lookup(key: String) -> Missile
    {
        if missiles.index(forKey: key) == nil || missiles[key]?.isActive == true {
            print("Get in-memory instance")
            return Missile(type: "ConventionalMissile", isActive: true)
        }
        missiles[key]?.isActive = true
        return missiles[key]!
    }
}

let c = MissileWarehouse()
c.missiles["ConventionalMissile#1"] = Missile(type: "ConventionalMissile", isActive: false)
c.missiles["TrackMissile#1"] = Missile(type: "TrackingMissile", isActive: false)

c.lookup(key: "ConventionalMissile#1").launch()
c.lookup(key: "TrackingMissile#1").launch()
c.lookup(key: "ConventionalMissile#1").launch()
