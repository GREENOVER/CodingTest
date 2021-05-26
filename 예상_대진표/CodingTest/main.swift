import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 0
    var hero = a
    var villain = b
    
    while hero != villain {
        if hero % 2 == 1 {
            hero = (hero + 1) / 2
        } else {
            hero /= 2
        }
        if villain % 2 == 1 {
            villain = (villain + 1) / 2
        } else {
            villain /= 2
        }
        answer += 1
    }
    return answer
}
