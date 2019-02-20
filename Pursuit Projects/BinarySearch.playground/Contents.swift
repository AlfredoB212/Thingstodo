import Cocoa

func binarySearch<T: Comparable>(inputArray: [T], searchKey: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        return nil
    } else {
        let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        if inputArray[middleIndex] > searchKey {
            return binarySearch(inputArray: inputArray, searchKey: searchKey, range: range.lowerBound..<middleIndex)
        } else if inputArray[middleIndex] < searchKey {
            return binarySearch(inputArray: inputArray, searchKey: searchKey, range: middleIndex + 1..<range.upperBound)
        } else {
            return middleIndex
        }
    }
}
