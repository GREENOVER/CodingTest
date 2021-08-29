import Foundation

public func solution(_ A: [Int]) -> Int {
    var sumOfGivenData = A.reduce(0, +)
    var resultSum = 0
    
    for index in A {
        if index == 0 {
            resultSum += sumOfGivenData
        }
        else {
            sumOfGivenData -= 1
        }
    }
    
    return resultSum > 1000000000 ? -1 : resultSum
}
