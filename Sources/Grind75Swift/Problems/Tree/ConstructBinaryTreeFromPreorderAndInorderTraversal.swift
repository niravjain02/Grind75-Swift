public enum ConstructBinaryTreeFromPreorderAndInorderTraversal {
    /// Reconstructs a binary tree from its preorder and inorder traversals.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty, preorder.count == inorder.count else {
            return nil
        }

        var inorderIndex: [Int: Int] = [:]
        for (index, value) in inorder.enumerated() {
            inorderIndex[value] = index
        }

        guard inorderIndex.count == inorder.count,
              Set(preorder).count == preorder.count,
              preorder.allSatisfy({ inorderIndex[$0] != nil }) else {
            return nil
        }

        var preorderIndex = 0

        func build(inorderLeft: Int, inorderRight: Int) -> TreeNode? {
            guard inorderLeft <= inorderRight else {
                return nil
            }

            let rootValue = preorder[preorderIndex]
            preorderIndex += 1
            guard let rootIndex = inorderIndex[rootValue],
                  rootIndex >= inorderLeft,
                  rootIndex <= inorderRight else {
                return nil
            }

            let root = TreeNode(rootValue)
            root.left = build(inorderLeft: inorderLeft, inorderRight: rootIndex - 1)
            root.right = build(inorderLeft: rootIndex + 1, inorderRight: inorderRight)
            return root
        }

        return build(inorderLeft: 0, inorderRight: inorder.count - 1)
    }
}
