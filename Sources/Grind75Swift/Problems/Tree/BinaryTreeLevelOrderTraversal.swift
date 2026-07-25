public enum BinaryTreeLevelOrderTraversal {
    /// Returns node values grouped from the root level downward.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ root: TreeNode?) -> [[Int]] {
        guard let root else {
            return []
        }

        var queue = [root]
        var head = 0
        var levels: [[Int]] = []

        while head < queue.count {
            let levelEnd = queue.count
            var level: [Int] = []
            level.reserveCapacity(levelEnd - head)

            while head < levelEnd {
                let node = queue[head]
                head += 1
                level.append(node.val)

                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }

            levels.append(level)
        }

        return levels
    }
}
