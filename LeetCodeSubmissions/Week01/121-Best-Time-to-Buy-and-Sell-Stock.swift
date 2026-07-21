final class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minimumPrice = Int.max
        var maximumProfit = 0

        for price in prices {
            minimumPrice = min(minimumPrice, price)
            maximumProfit = max(maximumProfit, price - minimumPrice)
        }

        return maximumProfit
    }
}
