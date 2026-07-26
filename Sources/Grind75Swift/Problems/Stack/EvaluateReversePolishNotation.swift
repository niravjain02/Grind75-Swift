public enum EvaluateReversePolishNotation {
    /// Evaluates a valid arithmetic expression written in reverse Polish notation.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ tokens: [String]) -> Int {
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
            case "/":
                stack.append(left / right)
            default:
                preconditionFailure("Unsupported operator: \(token)")
            }
        }

        return stack.last ?? 0
    }
}
