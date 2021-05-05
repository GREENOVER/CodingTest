import Foundation

func solution(_ citations:[Int]) -> Int {
    let stack: [Int] = citations.sorted(by: >)
    
    for i in 0..<stack.count {
        if i >= stack[i] {
            return i
        }
    }
    return stack.count
}
