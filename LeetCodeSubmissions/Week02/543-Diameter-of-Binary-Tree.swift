/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
final class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
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
