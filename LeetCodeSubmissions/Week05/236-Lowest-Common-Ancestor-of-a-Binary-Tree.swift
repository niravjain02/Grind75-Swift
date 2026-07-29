/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
final class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root else {
            return nil
        }

        if root === p || root === q {
            return root
        }

        let leftResult = lowestCommonAncestor(root.left, p, q)
        let rightResult = lowestCommonAncestor(root.right, p, q)

        if leftResult != nil && rightResult != nil {
            return root
        }

        return leftResult ?? rightResult
    }
}
