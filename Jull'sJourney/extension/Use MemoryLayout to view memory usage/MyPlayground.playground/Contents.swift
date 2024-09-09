MemoryLayout<Bool>.size
MemoryLayout<Bool>.alignment
MemoryLayout<Bool>.stride

MemoryLayout<Float>.size
MemoryLayout<Float>.alignment
MemoryLayout<Float>.stride

MemoryLayout<Int>.size
MemoryLayout<Int>.alignment
MemoryLayout<Int>.stride

struct Product
{
    let isSold: Bool
    let Price: Int
}

MemoryLayout<Product>.size
MemoryLayout<Product>.alignment
MemoryLayout<Product>.stride

var sampleStruct = Product(isSold: true, Price: 99)
withUnsafeBytes(of: &sampleStruct)
{ bytes in
    for byte in bytes
    {
        print(byte)
    }
}
