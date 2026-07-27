class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        validate(root, lowerBound: nil, upperBound: nil)
    }

    private func validate(
        _ node: TreeNode?,
        lowerBound: Int?,
        upperBound: Int?
    ) -> Bool {
        guard let node else {
            return true
        }
        if let lowerBound, node.val <= lowerBound {
            return false
        }
        if let upperBound, node.val >= upperBound {
            return false
        }

        return validate(node.left, lowerBound: lowerBound, upperBound: node.val) &&
            validate(node.right, lowerBound: node.val, upperBound: upperBound)
    }
}
