import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic: [Int: Double] = Dictionary()
    
    for i in 1...N {
        let enter: Int = stages.filter{$0 >= i}.count
        let fail: Int = stages.filter{$0 == i}.count
        dic[i] = Double(fail) / Double(enter)
    }
    let result = dic.sorted(by: <).sorted(by: {$0.1 > $1.1}).map{$0.0}
    
    return result
}
