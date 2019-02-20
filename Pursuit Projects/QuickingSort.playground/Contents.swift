import Cocoa
// implementing Quick sort algorithm using the Lomtu's partitioning scheme to archive a pivot
func partionLomuto<T: Comparable>(inputArray: inout [T], low: Int, high: Int ) -> Int {
   let pivot = inputArray[high]
    var i = low// to be able to mutate state
    for j in low..<high {
        if inputArray[j] <= pivot {
            (inputArray[i], inputArray[j]) = (inputArray[j], inputArray[i])
            i += 1 // move i
        }
    }
    (inputArray[i], inputArray[high]) = (inputArray[high], inputArray[i])
    return i // returns index of pivot
}

func quicksortLomuto(inputArray: inout [Int], low: Int, high: Int) {
    if low < high {
        let pivot = partionLomuto(inputArray: &inputArray, low: low, high: high)
        quicksortLomuto(inputArray: &inputArray, low: low, high: pivot - 1)
        quicksortLomuto(inputArray: &inputArray, low: pivot + 1, high: high)
    }
}
var list2 = [ 10, 0, 3, 9, 2, 14, 26, 27, 1, 5, 8, -1, 8]

quicksortLomuto(inputArray: &list2, low: 0, high: list2.count - 1)
