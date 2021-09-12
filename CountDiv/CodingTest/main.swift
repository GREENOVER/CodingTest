import Foundation

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    let startCount = A % K == 0 ? 1 : 0
    return (B / K + startCount) - (A / K)
}
