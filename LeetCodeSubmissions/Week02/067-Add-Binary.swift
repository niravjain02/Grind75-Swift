class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let firstDigits = Array(a.utf8)
        let secondDigits = Array(b.utf8)
        var firstIndex = firstDigits.count - 1
        var secondIndex = secondDigits.count - 1
        var carry = 0
        var reversedSum: [UInt8] = []

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
