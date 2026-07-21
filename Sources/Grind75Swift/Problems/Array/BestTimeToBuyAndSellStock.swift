public enum BestTimeToBuyAndSellStock {
    /// Returns the largest profit from one buy followed by one sell.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public static func solve(_ prices: [Int]) -> Int {
        var minimumPrice = Int.max
        var maximumProfit = 0

        for price in prices {
            minimumPrice = min(minimumPrice, price)
            maximumProfit = max(maximumProfit, price - minimumPrice)
        }

        return maximumProfit
    }
}
