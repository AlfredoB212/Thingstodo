import Cocoa

func bubbleSort(array: inout [Int]) -> [Int] {
    for _ in 0..<array.count {
        for j in 1..<array.count {
            // if the value at the previous index is greater than the current index we need to swamp the values
            if array[j - 1] > array[j] {
                let temp = array[j - 1] // e.g saving 11
                array[j-1] = array[j] // e.g swapping 11 with -3
                array[j] = temp // e.g assign 11 to index after -3
            }
        }
    }
    return array
}
var input1 = [11,-3,8,0,1]
bubbleSort(array: &input1)

// insertion sort
func insertionSort(array: inout [Int]) {
    for i in 0..<array.count {
        var j = i
        while j > 0 && array[j - 1] > array[j] {
            array.swapAt(j-1, j)
            j -= 1
        }
    }
}

var input2 = [-7, 11, 5, 3, 0, 1]
insertionSort(array: &input2)

// thsi is the higher function (.swapAt)
//let temp = array[j - 1] // e.g saving 11
//array[j-1] = array[j] // e.g swapping 11 with -3
//array[j] = temp
