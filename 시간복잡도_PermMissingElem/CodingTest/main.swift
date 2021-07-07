import Foundation

public func solution(_ A : [Int]) -> Int {
    let n = A.count
    let correctSum = (n + 1) * (n + 2) / 2
    
    let emptySum = A.reduce(0) {
        $0 + $1
    }
    
    return correctSum - emptySum
}
