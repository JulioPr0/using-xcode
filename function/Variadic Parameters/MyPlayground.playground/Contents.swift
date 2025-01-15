func getAverage(numbers: Double...) -> Double {
    if numbers.count == 0 {
        return 0.0
    }
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

print(getAverage())
print(getAverage(numbers: 1, 2, 3, 4))

func getAverage(mathScores: [Double], physicScores: [Double]) -> Double {
    let allScores = mathScores + physicScores
    if allScores.isEmpty {
        return 0.0
    }
    let total = allScores.reduce(0, +)
    return total / Double(allScores.count)
}

print(getAverage(mathScores: [1, 2, 3, 4], physicScores: [5, 6, 7, 8]))
