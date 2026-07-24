public enum DiameterOfBinaryTree {
    /// Returns the greatest number of edges on a path between any two nodes.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(h), where h is the tree height
    public static func solve(_ root: TreeNode?) -> Int {
        var diameter = 0

        func height(of node: TreeNode?) -> Int {
            guard let node else {
                return 0
            }

            let leftHeight = height(of: node.left)
            let rightHeight = height(of: node.right)
            diameter = max(diameter, leftHeight + rightHeight)

            return max(leftHeight, rightHeight) + 1
        }

        _ = height(of: root)
        return diameter
    }
}
