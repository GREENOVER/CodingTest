import Foundation

public func solution(_ A : inout [Int], _ L : Int, _ R : Int) -> Int {
    var LStack: [Int] = [L]
    var RStack: [Int] = [R]
    
    for i in 0..<A.count{
        if A[i] < L && !(LStack.contains(A[i])) {
            LStack.append(A[i])
        } else if A[i] > R && !(RStack.contains(A[i])) {
            RStack.append(A[i])
        }
    }
    
    let Lcount = LStack.count - 1
    let Rcount = RStack.count - 1
    let answer = Lcount + Rcount
    
    return answer
}
