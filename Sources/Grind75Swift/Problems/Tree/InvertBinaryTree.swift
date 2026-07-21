public final class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?

    public init(_ val: Int = 0, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}

public enum InvertBinaryTree {
    /// Inverts a binary tree in place and returns its root.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(h), where h is the tree height
    @discardableResult
    public static func solve(_ root: TreeNode?) -> TreeNode? {
        guard let root else {
            return nil
        }

        let originalLeft = root.left
        root.left = solve(root.right)
        root.right = solve(originalLeft)
        return root
    }
}
