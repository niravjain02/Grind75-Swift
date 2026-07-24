public enum AddBinary {
    /// Returns the binary sum of two nonempty binary strings.
    ///
    /// - Complexity:
    ///   - Time: O(max(m, n))
    ///   - Space: O(max(m, n))
    public static func solve(_ first: String, _ second: String) -> String {
        let firstDigits = Array(first.utf8)
        let secondDigits = Array(second.utf8)
        var firstIndex = firstDigits.count - 1
        var secondIndex = secondDigits.count - 1
        var carry = 0
        var reversedSum: [UInt8] = []
        reversedSum.reserveCapacity(max(firstDigits.count, secondDigits.count) + 1)

        while firstIndex >= 0 || secondIndex >= 0 || carry > 0 {
            let firstDigit = firstIndex >= 0 ? Int(firstDigits[firstIndex] - 48) : 0
            let secondDigit = secondIndex >= 0 ? Int(secondDigits[secondIndex] - 48) : 0
            let total = firstDigit + secondDigit + carry

            reversedSum.append(UInt8(total % 2) + 48)
            carry = total / 2
            firstIndex -= 1
            secondIndex -= 1
        }

        return String(decoding: reversedSum.reversed(), as: UTF8.self)
    }
}
