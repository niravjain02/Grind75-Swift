public enum ProductOfArrayExceptSelf {
    /// Returns an array where each value is the product of all other input values.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1) auxiliary space, excluding the returned array
    public static func solve(_ numbers: [Int]) -> [Int] {
        guard !numbers.isEmpty else {
            return []
        }

        var products = Array(repeating: 1, count: numbers.count)
        var prefixProduct = 1

        for index in numbers.indices {
            products[index] = prefixProduct
            prefixProduct *= numbers[index]
        }

        var suffixProduct = 1

        for index in numbers.indices.reversed() {
            products[index] *= suffixProduct
            suffixProduct *= numbers[index]
        }

        return products
    }
}
