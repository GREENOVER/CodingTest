import Foundation

func solution(_ arr:[Int]) -> Int {
    let numArr = arr.sorted(by: >)
    var result = numArr[0]
    let maxNum = result
    
    while true {
        var count: Int = 0
        for i in 1..<numArr.count {
            if result % numArr[i] == 0 {
                count += 1
            }
        }
        if count == numArr.count - 1 {
            return result
        } else {
            result += maxNum
            continue
        }
    }
}
