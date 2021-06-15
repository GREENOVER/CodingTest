import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    var min = 1
    var max = times.max()! * n
    var answer = 0
    
    while min <= max {
        let mid = (min + max) / 2
        var count = 0
        
        for i in times {
            count += mid / i
        }
        
        if count < n {
            min = mid + 1
        } else {
            max = mid - 1
            answer = mid
        }
    }
    return Int64(answer)
}


