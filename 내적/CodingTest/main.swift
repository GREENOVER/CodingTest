import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    let sequenceZip = zip(a, b)
    var result: Int = 0
    
    for (i, j) in sequenceZip {
        result += (i * j)
    }
    
    return result
}
