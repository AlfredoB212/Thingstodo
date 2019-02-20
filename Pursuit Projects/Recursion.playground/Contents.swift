import Cocoa

func fibonacci(num: Int)-> Int  {
    guard > 1 else  { return 1 } // base case
    return fibonacci(num: num - 1) + fibonacci(num: num - 2)
}
