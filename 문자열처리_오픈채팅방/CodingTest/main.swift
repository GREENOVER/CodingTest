import Foundation
var nickName: [String : String] = [:]
var input: [(id: String, commend: String)] = []

func solution(_ record:[String]) -> [String] {
    for i in 0 ..< record.count {
        let recordSplit = record[i].components(separatedBy: " ")
        let commend = recordSplit[0]
        let uid = recordSplit[1]
        
        switch commend {
        case "Enter":
            nickName.updateValue(recordSplit[2], forKey: uid)
            input.append((uid, commend))
        case "Leave":
            input.append((uid, commend))
        default:
            compareName(name: recordSplit[2], uid: uid)
        }
    }
    return result()
}

func compareName(name: String, uid: String) {
    nickName.updateValue(name, forKey: uid)
}

func result() -> [String] {
    var result: [String] = []
    
    for i in 0 ..< input.count {
        let index = input[i]
        
        switch index.commend {
        case "Enter":
            result.append("\(nickName[index.id]!)님이 들어왔습니다.")
        case "Leave":
            result.append("\(nickName[index.id]!)님이 나갔습니다.")
        default:
            break
        }
    }
    return result
}
