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
class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty else {
            return nil
        }

        var inorderIndex: [Int: Int] = [:]
        for (index, value) in inorder.enumerated() {
            inorderIndex[value] = index
        }

        var preorderIndex = 0

        func build(_ left: Int, _ right: Int) -> TreeNode? {
            guard left <= right else {
                return nil
            }

            let rootValue = preorder[preorderIndex]
            preorderIndex += 1
            let rootIndex = inorderIndex[rootValue]!
            let root = TreeNode(rootValue)
            root.left = build(left, rootIndex - 1)
            root.right = build(rootIndex + 1, right)
            return root
        }

        return build(0, inorder.count - 1)
    }
}
