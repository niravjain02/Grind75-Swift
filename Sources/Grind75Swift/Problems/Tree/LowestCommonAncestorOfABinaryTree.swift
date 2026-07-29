public enum LowestCommonAncestorOfABinaryTree {
    /// Returns the lowest node whose subtree contains both target nodes.
    ///
    /// Both targets are expected to exist in the tree.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(h), where h is the tree height
    public static func solve(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let p, let q else {
            return nil
        }

        func findAncestor(_ node: TreeNode?) -> TreeNode? {
            guard let node else {
                return nil
            }

            if node === p || node === q {
                return node
            }

            let leftResult = findAncestor(node.left)
            let rightResult = findAncestor(node.right)

            if leftResult != nil && rightResult != nil {
                return node
            }

            return leftResult ?? rightResult
        }

        return findAncestor(root)
    }
}
