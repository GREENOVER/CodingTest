import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let students: [[Int]] = [[1,2,3,4,5], [2,1,2,3,2,4,2,5], [3,3,1,1,2,2,4,4,5,5]]
    var stack: [Int] = [0, 0, 0]
    var result: [Int] = []
    
    //문제 맞추기
    for i in 0..<answers.count {
        let first = i % students[0].count
        let second = i % students[1].count
        let third = i % students[2].count
        
        if answers[i] == students[0][first] {
            stack[0] += 1
        }
        if answers[i] == students[1][second] {
            stack[1] += 1
        }
        if answers[i] == students[2][third] {
            stack[2] += 1
        }
    }

    //맞춘사람 비교
    let max: Int = stack.max()!
    
    for i in 0..<stack.count {
        if max == stack[i] {
            result.append(i+1)
        }
    }
    return result
}
