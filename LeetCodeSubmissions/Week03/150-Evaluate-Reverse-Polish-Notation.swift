class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []

        for token in tokens {
            if let value = Int(token) {
                stack.append(value)
                continue
            }

            let right = stack.removeLast()
            let left = stack.removeLast()

            switch token {
            case "+":
                stack.append(left + right)
            case "-":
                stack.append(left - right)
            case "*":
                stack.append(left * right)
            default:
                stack.append(left / right)
            }
        }

        return stack.last!
    }
}
