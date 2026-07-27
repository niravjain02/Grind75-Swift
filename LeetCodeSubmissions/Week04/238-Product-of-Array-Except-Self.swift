class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var products = Array(repeating: 1, count: nums.count)
        var prefixProduct = 1

        for index in nums.indices {
            products[index] = prefixProduct
            prefixProduct *= nums[index]
        }

        var suffixProduct = 1

        for index in nums.indices.reversed() {
            products[index] *= suffixProduct
            suffixProduct *= nums[index]
        }

        return products
    }
}
