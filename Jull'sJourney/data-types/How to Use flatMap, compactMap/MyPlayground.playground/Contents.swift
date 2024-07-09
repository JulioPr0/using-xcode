import Foundation

let array = [[1, 2, 3], [4, 5]]
print(array)

let flatArray = array.flatMap { $0 }
print(flatArray)

let array2 = [[1, 2, 3], [4, nil, 5]]
let flatArray2 = array2.flatMap { $0 }
print(flatArray2)

let flatArray3 = array2.flatMap { $0 }.compactMap { $0 }
print(flatArray3)

let array4 = [[1, 2, 3], [4, nil, 5], nil]
let flatArray4 = array4.compactMap { $0 }
print(flatArray4)

let websiteString: String? = "https://www.websitejulio.com?username=julpramaitama"
guard let website = websiteString else {
    assert(false)
}
guard let finalUrl = URL(string: website) else {
    assert(false)
}
finalUrl.query

websiteString.flatMap(URL.init)?.query
