public enum BinaryTreeRightSideView {
    /// Returns the value visible from the right side at every tree level.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ root: TreeNode?) -> [Int] {
        guard let root else {
            return []
        }

        var queue = [root]
        var head = 0
        var result: [Int] = []

        while head < queue.count {
            let levelEnd = queue.count

            while head < levelEnd {
                let node = queue[head]
                head += 1

                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }

                if head == levelEnd {
                    result.append(node.val)
                }
            }
        }

        return result
    }
}
