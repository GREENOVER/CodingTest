import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var result: [Int] = []
    
    s.removeFirst(2)
    s.removeLast(2)
    
    let answer = s.components(separatedBy: "},{").sorted(by: { $0.count < $1.count }).map { $0.components(separatedBy: ",")}
    
    for i in 0..<answer.count {
        for j in 0..<answer[i].count {
            let temp: Int = Int(answer[i][j])!
            if !result.contains(temp) {
                result.append(temp)
            }
        }
    }
    return result
}

solution(
    "{{1,2,3},{2,1},{1,2,4,3},{2}}")
