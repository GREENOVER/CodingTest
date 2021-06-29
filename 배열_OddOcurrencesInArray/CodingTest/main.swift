import Foundation

public func solution1(_ A : inout [Int]) -> Int {
    var result = Set<Int>()
    
    for i in A {
        if result.contains(i) {
            result.remove(i)
        } else {
            result.insert(i)
        }
    }
    
    return result.first!
}

public func solution2(_ A : inout [Int]) -> Int {
    var result = 0
    
    for i in A {
        result ^= i
    }
    
    return result
}
