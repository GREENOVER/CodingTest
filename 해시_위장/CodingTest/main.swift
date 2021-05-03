import Foundation

func solution(_ clothes:[[String]]) -> Int {
    let types = Set(clothes.map{ $0.last })
    
    let counts = types.map{ types in
        return clothes.filter{ $0.last == types }.count + 1
    }
    return counts.reduce(1) { $0 * $1 } - 1
}
