class Solution: VersionControl {
    override func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n

        while left < right {
            let middle = left + (right - left) / 2

            if isBadVersion(middle) {
                right = middle
            } else {
                left = middle + 1
            }
        }

        return left
    }
}
