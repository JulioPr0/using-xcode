class Player
{
    var name: String = "Jull"
    var level: Int = 3
    var score: Double = 0.0
    {
        willSet
        {
            if level == 3
            {
                print("Be careful!")
            }
            else
            {
                print("Go ahead!")
            }
        }
        didSet
        {
            print("Do something!")
        }
    }
}

var player = Player()
player.score
player.score = 12
player
