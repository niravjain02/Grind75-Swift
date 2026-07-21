import XCTest
@testable import Grind75Swift

final class InvertBinaryTreeTests: XCTestCase {
    func testStandardExample() {
        let root = TreeNode(
            4,
            TreeNode(2, TreeNode(1), TreeNode(3)),
            TreeNode(7, TreeNode(6), TreeNode(9))
        )

        XCTAssertEqual(levelOrder(InvertBinaryTree.solve(root)), [4, 7, 2, 9, 6, 3, 1])
    }

    func testEmptyTree() {
        XCTAssertNil(InvertBinaryTree.solve(nil))
    }

    func testSingleNode() {
        let root = TreeNode(1)

        XCTAssertEqual(levelOrder(InvertBinaryTree.solve(root)), [1])
    }

    func testTwoLevelTree() {
        let root = TreeNode(2, TreeNode(1), TreeNode(3))

        XCTAssertEqual(levelOrder(InvertBinaryTree.solve(root)), [2, 3, 1])
    }

    func testUnbalancedTree() {
        let root = TreeNode(1, TreeNode(2, TreeNode(3)), nil)
        let inverted = InvertBinaryTree.solve(root)

        XCTAssertNil(inverted?.left)
        XCTAssertEqual(inverted?.right?.val, 2)
        XCTAssertEqual(inverted?.right?.right?.val, 3)
    }

    func testDuplicateAndNegativeValues() {
        let root = TreeNode(-1, TreeNode(-1), TreeNode(2, TreeNode(2), nil))
        let inverted = InvertBinaryTree.solve(root)

        XCTAssertEqual(inverted?.left?.val, 2)
        XCTAssertEqual(inverted?.left?.right?.val, 2)
        XCTAssertEqual(inverted?.right?.val, -1)
    }

    private func levelOrder(_ root: TreeNode?) -> [Int] {
        guard let root else {
            return []
        }

        var values: [Int] = []
        var queue = [root]
        var index = 0

        while index < queue.count {
            let node = queue[index]
            index += 1
            values.append(node.val)

            if let left = node.left {
                queue.append(left)
            }

            if let right = node.right {
                queue.append(right)
            }
        }

        return values
    }
}
