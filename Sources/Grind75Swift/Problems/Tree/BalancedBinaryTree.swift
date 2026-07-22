public enum BalancedBinaryTree {
    /// Returns whether every node's subtrees differ in height by at most one.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(h), where h is the tree height
    public static func solve(_ root: TreeNode?) -> Bool {
        height(of: root) != -1
    }

    private static func height(of node: TreeNode?) -> Int {
        guard let node else {
            return 0
        }

        let leftHeight = height(of: node.left)
        guard leftHeight != -1 else {
            return -1
        }

        let rightHeight = height(of: node.right)
        guard rightHeight != -1, abs(leftHeight - rightHeight) <= 1 else {
            return -1
        }

        return max(leftHeight, rightHeight) + 1
    }
}
