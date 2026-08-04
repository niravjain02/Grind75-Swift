public enum KthSmallestElementInABST {
    /// Returns the kth smallest value in a binary search tree.
    ///
    /// - Complexity:
    ///   - Time: O(h + k), where h is the tree height
    ///   - Space: O(h)
    public static func solve(_ root: TreeNode?, k: Int) -> Int {
        guard k > 0 else {
            return 0
        }

        var stack: [TreeNode] = []
        var current = root
        var remaining = k

        while current != nil || !stack.isEmpty {
            while let node = current {
                stack.append(node)
                current = node.left
            }

            let node = stack.removeLast()
            remaining -= 1
            if remaining == 0 {
                return node.val
            }
            current = node.right
        }

        return 0
    }
}
