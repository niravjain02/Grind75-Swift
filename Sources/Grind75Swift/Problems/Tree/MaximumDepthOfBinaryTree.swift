public enum MaximumDepthOfBinaryTree {
    /// Returns the number of nodes on the longest root-to-leaf path.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(h), where h is the tree height
    public static func solve(_ root: TreeNode?) -> Int {
        guard let root else {
            return 0
        }

        return max(solve(root.left), solve(root.right)) + 1
    }
}
