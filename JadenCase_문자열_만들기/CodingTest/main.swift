func solution(_ s:String) -> String {
    var result = ""
    var count = 0

    for index in s {
        if index != " " {
            if count == 0 {
                result += String(index).uppercased()
            } else {
                result += String(index).lowercased()
            }
            count += 1
        } else {
            result += " "
            count = 0
        }
    }
    return result
}
