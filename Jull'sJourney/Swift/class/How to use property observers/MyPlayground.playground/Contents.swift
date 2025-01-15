class Player
{
    var name: String = "Jull"
    var level: Int = 3
    var score: Double
    {
        get
        {
            return Double(level) * 2.0
        }
        set(newScore)
        {
            level = Int(newScore) / 2
        }
    }
}

var player = Player()
player.score
player.score = 4
player.level
