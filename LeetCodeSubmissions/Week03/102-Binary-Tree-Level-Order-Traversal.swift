class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root else {
            return []
        }

        var queue = [root]
        var head = 0
        var result: [[Int]] = []

        while head < queue.count {
            let levelEnd = queue.count
            var level: [Int] = []

            while head < levelEnd {
                let node = queue[head]
                head += 1
                level.append(node.val)

                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }

            result.append(level)
        }

        return result
    }
}
