class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root else {
            return 0
        }

        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
}
