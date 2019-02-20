import UIKit

//let jevonHashValue = "Jevon".hashValue
//print(jevonHashValue)
//
//let index = abs(jevonHashValue % 5)
//print(index)


// implementation

struct HashTable {
    // element is the key, value pair
    private typealias Element = (key: Key, value: Value)
    
    private typealias Bucket = [Element]
    
    init(capacity: Int) {
    buckets = Array<Bucket> (repeating: [], count: capacity)
    }
    private func index(forKey key: Key) -> Int {
        return abs(key.hashValue) % buckets.count
    }
    
    // search
    
    // update
    
    // delete
}


var hashTable = HashTable<String, String>(capacity: 4)
print(hashTable)
