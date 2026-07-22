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
