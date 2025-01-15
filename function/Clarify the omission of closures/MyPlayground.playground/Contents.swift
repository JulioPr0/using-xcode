let array = [4, 1, 6, 3, 9, 8, 7, 2, 5]

let sortedArray1 = array.sorted { (a: Int, b: Int) -> Bool in
    return a > b
}

let sortedArray2 = array.sorted { (a: Int, b: Int) in
    return a > b
}

let sortedArray3 = array.sorted { (a, b) in
    return a > b
}

let sortedArray4 = array.sorted {
    return $0 > $1
}

let sortedArray5 = array.sorted {
    $0 > $1
}

let sortedArray6 = array.sorted(by: >)

print(sortedArray1)
print(sortedArray2)
print(sortedArray3)
print(sortedArray4)
print(sortedArray5)
print(sortedArray6)
