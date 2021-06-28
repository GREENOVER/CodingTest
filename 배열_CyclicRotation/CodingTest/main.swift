import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    var count = K
    var arr = A
    
    if arr.isEmpty {
        return arr
    }
    
    while count != 0 {
        let temp = arr.removeLast()
        arr.insert(temp, at: 0)
        count -= 1
    }
    
    return arr
}
