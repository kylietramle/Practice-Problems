// binary search

import Foundation

let array = [1,4,5,7,9,13,16,18,20,23,25,27]

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex)/2
        let middleValue = array[middleIndex]
        
        print("middle index is \(middleIndex); middle number is \(middleValue); leftIndex is \(leftIndex); rightIndex is \(rightIndex); for [\(array[leftIndex]), \(array[rightIndex])]")
        
        if searchValue == middleValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}

print (binarySearch(searchValue: 27, array: array))