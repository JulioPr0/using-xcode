@propertyWrapper
struct ScoreLimit< T: Numeric & Comparable>
{
    var value: T
    
    var wrappedValue: T
    {
        get { value }
        
        set
        {
            if newValue < 0
            {
                value = 0
            }
            else if newValue > 10
            {
                value = 10
            }
            else
            {
                value = newValue
            }
        }
    }
    init(wrappedValue: T)
    {
        if wrappedValue < 0
        {
            self.value = 0
        }
        else if wrappedValue > 10
        {
            self.value = 10
        }
        else
        {
            self.value = wrappedValue
        }
    }
}

struct KnowledgeContest
{
    @ScoreLimit
    var score = 0
    
    mutating func start()
    {
//        Round 1
        score += 2
        print(score)
        
//        Round 2
        score += -4
        print(score)
        
//        Round 3
        score += 5
        print(score)
        
        score += 8
        print(score)
    }
}

var contest = KnowledgeContest()
contest.start()
