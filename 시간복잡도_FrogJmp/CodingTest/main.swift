import Foundation

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let count = (Double(Y) - Double(X)) / Double(D)

    return Int(ceil(count))
}
