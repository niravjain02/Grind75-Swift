class Solution {
    func calculate(_ s: String) -> Int {
        var result = 0
        var number = 0
        var sign = 1
        var stack: [Int] = []

        for byte in s.utf8 {
            switch byte {
            case 48...57:
                number = number * 10 + Int(byte - 48)
            case 43:
                result += sign * number
                number = 0
                sign = 1
            case 45:
                result += sign * number
                number = 0
                sign = -1
            case 40:
                stack.append(result)
                stack.append(sign)
                result = 0
                number = 0
                sign = 1
            case 41:
                result += sign * number
                number = 0
                let parentSign = stack.removeLast()
                let parentResult = stack.removeLast()
                result = parentResult + parentSign * result
            default:
                continue
            }
        }

        return result + sign * number
    }
}
