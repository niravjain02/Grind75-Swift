public enum StringToIntegerAtoi {
    /// Parses a decimal integer using the rules of LeetCode's `atoi` problem.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public static func solve(_ string: String) -> Int {
        let bytes = string.utf8
        var index = bytes.startIndex

        while index != bytes.endIndex, bytes[index] == 32 {
            bytes.formIndex(after: &index)
        }

        var sign = 1

        if index != bytes.endIndex {
            if bytes[index] == 45 {
                sign = -1
                bytes.formIndex(after: &index)
            } else if bytes[index] == 43 {
                bytes.formIndex(after: &index)
            }
        }

        let positiveLimit = Int(Int32.max)
        let magnitudeLimit = sign == 1 ? positiveLimit : positiveLimit + 1
        var magnitude = 0

        while index != bytes.endIndex {
            let byte = bytes[index]

            guard byte >= 48, byte <= 57 else {
                break
            }

            let digit = Int(byte - 48)

            if magnitude > (magnitudeLimit - digit) / 10 {
                return sign == 1 ? positiveLimit : Int(Int32.min)
            }

            magnitude = magnitude * 10 + digit
            bytes.formIndex(after: &index)
        }

        return sign * magnitude
    }
}
