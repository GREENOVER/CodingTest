import Foundation

public func solution(_ X : Int, _ A : [Int]) -> Int {
    var leaf = Set<Int>()
    
    for (index, item) in A.enumerated() {
        if item <= X {
            leaf.insert(item)
        }
        if leaf.count == X {
            return index
        }
    }
    return -1
}
