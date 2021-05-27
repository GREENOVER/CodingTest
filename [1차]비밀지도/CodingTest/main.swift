import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var result: String = String()
    
    for i in 0..<n {
        let arr1Value = Int(String(arr1[i], radix: 2))
        let arr2Value = Int(String(arr2[i], radix: 2))
        let sum = String(arr1Value! + arr2Value!)
        var count = n
        
        while sum.count < count {
            result += " "
            count -= 1
        }
        
        for j in sum {
            if j == "1" || j == "2" {
                result += "#"
            } else {
                result += " "
            }
        }
        answer.append(result)
        result = ""
    }
    return answer
}
