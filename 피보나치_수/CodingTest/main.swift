import Foundation

func solution(_ n:Int) -> Int {
    var result: [Int] = [0, 1]
    
    for i in 2...n {
        result.append((result[i - 2] + result[i - 1]) % 1234567)
    }
    
    return result[n]
}
