import Foundation

public func solution(_ A: [Int]) -> Int {
    var compareArr = Set<Int>()
    for item in A {
        if item > 0 {
            compareArr.insert(item)
        }
    }
    
    if compareArr.isEmpty {
        return 1
    }
    
    for (index, _) in compareArr.enumerated() {
        if !(compareArr.contains(index + 1)) {
            return index + 1
        }
    }
    return compareArr.max()! + 1
}
