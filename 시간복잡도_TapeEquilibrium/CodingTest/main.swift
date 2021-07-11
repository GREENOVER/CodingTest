import Foundation

public func solution(_ A : [Int]) -> Int {
    var beforeNum = 0
    var afterNum = A.reduce(0){$0 + $1}
    var comparativeNum = 0
    
    for (index, item) in A.enumerated() {
        beforeNum += item
        afterNum -= item
        
        let subtractNum = abs(beforeNum - afterNum)
        
        if index == 0 {
            comparativeNum = subtractNum
        } else if subtractNum < comparativeNum {
            comparativeNum = subtractNum
        }
    }
    
    return comparativeNum
}
