import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var students: [Int] = Array(repeating: 1, count: n)
    var count: Int = 0
    
    for i in reserve {
        students[i - 1] += 1
    }
    
    for i in lost {
        students[i - 1] += -1
    }
    
    for i in 0..<n {
        if students[i] == 0 {
            if i > 0 && (students[i - 1] > 1) {
                students[i] = 1
                students[i - 1] = 1
            } else if i < n - 1 && (students[i + 1] > 1) {
                students[i] = 1
                students[i + 1] = 1
            } else {
                count += 1
            }
        }
    }
    return n - count
}
