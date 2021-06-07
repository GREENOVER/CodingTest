import Foundation

func solution(_ num:Int) -> Int {
    var input = num
    var count = 0
    
    while input != 1 {
        if input % 2 == 0 {
            input /= 2
        } else {
            input = (input * 3) + 1
        }
        
        if count == 500 {
            return -1
        }
        count += 1
    }
    
    return count
}
