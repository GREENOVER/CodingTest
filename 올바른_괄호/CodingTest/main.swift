import Foundation

func solution(_ s:String) -> Bool
{
    let input = s.map{$0}
    var count = 0
    
    for i in input {
        switch i {
        case "(":
            count += 1
        default:
            count -= 1
        }
        if count < 0 {
            return false
        }
    }
    
    return count == 0 ? true : false
}
