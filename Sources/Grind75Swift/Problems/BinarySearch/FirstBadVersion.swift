public enum FirstBadVersion {
    public static func solve(
        _ versionCount: Int,
        isBadVersion: (Int) -> Bool
    ) -> Int {
        var left = 1
        var right = versionCount

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
