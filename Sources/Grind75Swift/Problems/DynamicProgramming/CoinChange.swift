public enum CoinChange {
    /// Returns the fewest coins needed to make the amount, or -1 if impossible.
    ///
    /// - Complexity:
    ///   - Time: O(amount * c), where c is the number of coin denominations
    ///   - Space: O(amount)
    public static func solve(_ coins: [Int], amount: Int) -> Int {
        guard amount >= 0 else {
            return -1
        }

        var minimumCoins = Array(repeating: amount + 1, count: amount + 1)
        minimumCoins[0] = 0

        guard amount > 0 else {
            return 0
        }

        for currentAmount in 1...amount {
            for coin in coins where coin > 0 && coin <= currentAmount {
                minimumCoins[currentAmount] = min(
                    minimumCoins[currentAmount],
                    minimumCoins[currentAmount - coin] + 1
                )
            }
        }

        return minimumCoins[amount] > amount ? -1 : minimumCoins[amount]
    }
}
