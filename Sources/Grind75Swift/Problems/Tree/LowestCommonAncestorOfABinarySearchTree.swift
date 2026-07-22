public enum LowestCommonAncestorOfABinarySearchTree {
    /// Returns the lowest node whose subtree contains both target nodes in a BST.
    ///
    /// - Complexity:
    ///   - Time: O(h), where h is the tree height
    ///   - Space: O(1)
    public static func solve(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let p, let q else {
            return nil
        }

        let lowerValue = min(p.val, q.val)
        let upperValue = max(p.val, q.val)
        var current = root

        while let node = current {
            if node.val < lowerValue {
                current = node.right
            } else if node.val > upperValue {
                current = node.left
            } else {
                return node
            }
        }

        return nil
    }
}
