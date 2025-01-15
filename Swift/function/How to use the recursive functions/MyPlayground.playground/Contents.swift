func factorial(n: UInt) -> UInt
{
    if n == 1
    {
        return 1
    }
    else
    {
        return n * factorial(n: n-1)
    }
}
factorial(n: 4)

func tailRecursion(n: UInt, result: UInt) -> UInt
{
    if n == 1
    {
        return result
    }
    else
    {
        return tailRecursion(n: n-1, result: n * result)
    }
}
tailRecursion(n: 4, result: 1)
