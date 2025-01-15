protocol CloneProtocol
{
    func deepCopy() -> CloneProtocol
}

class Sheep: CloneProtocol {
    var name: String = ""
    func deepCopy() -> CloneProtocol {
        return Sheep()
    }
}

let firstSheep = Sheep()
firstSheep.name = "Dolly"

let secondSheep = firstSheep.deepCopy()
(secondSheep as? Sheep)?.name = "Parton"

firstSheep.name
(secondSheep as? Sheep)?.name
