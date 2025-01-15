func useUnsafeMutableRawPointer()
{
    let strideForInt = MemoryLayout<Int>.stride
    let totalByteCount = strideForInt * 2
    
    let unsafeMutableRawPointer = UnsafeMutableRawPointer.allocate(byteCount: totalByteCount, alignment: MemoryLayout<Int>.alignment)
    
    defer { unsafeMutableRawPointer.deallocate() }
    
    unsafeMutableRawPointer.storeBytes(of: 11, as: Int.self)
    unsafeMutableRawPointer
        .advanced(by: strideForInt)
        .storeBytes(of: 22, as: Int.self)
    unsafeMutableRawPointer
        .advanced(by: strideForInt)
    
    let unsafeRawBufferPointer = UnsafeRawBufferPointer(start: unsafeMutableRawPointer, count: totalByteCount)
    for (index, value) in unsafeRawBufferPointer.enumerated()
    {
        print("byte \(index): \(value)")
    }
}

useUnsafeMutableRawPointer()
