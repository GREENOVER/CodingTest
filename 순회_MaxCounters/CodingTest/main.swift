import Foundation

public func solution(_ N : Int, _ A: [Int]) -> [Int] {
    var resultArr = [Int](repeating: 0, count: N)
    var maxValue = 0
    var maxCount = 0
    
    for data in A {
        let index = data - 1
        
        if data < N + 1 {
            if resultArr[index] <= maxValue {
                resultArr[index] = maxValue
            }
            resultArr[index] += 1
            
            if resultArr[index] > maxCount {
                maxCount = resultArr[index]
            }
        } else {
            maxValue = maxCount
        }
    }
    
    return resultArr.map { $0 < maxValue ? maxValue : $0 }
}


/*
  A[0] = 3 >> mv = 0, mc = 1
  A[1] = 4 >> mv = 0, mc = 1
  A[2] = 4 >> mv = 1, mc = 2
  A[3] = 6 >> mv = 2, mc = 2
  A[4] = 1 >> mv = 2, mc = 3
  A[5] = 4 >> mv = 2, mc = 4
  A[6] = 4 >> mv = 2, mc = 5
*/
