import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let width = Int(sqrt(Double(yellow)))
    
    for i in width...yellow {
        for height in 1...width {
            if yellow == i * height {
                if brown == ((i + 2) * 2) + (height * 2) {
                    return [i + 2, height + 2]
                }
            }
        }
    }
    return []
}
