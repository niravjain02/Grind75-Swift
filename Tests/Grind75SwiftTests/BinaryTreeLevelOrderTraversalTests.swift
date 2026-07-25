import XCTest
@testable import Grind75Swift

final class BinaryTreeLevelOrderTraversalTests: XCTestCase {
    func testStandardExample() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(7))
        )

        XCTAssertEqual(
            BinaryTreeLevelOrderTraversal.solve(root),
            [[3], [9, 20], [15, 7]]
        )
    }

    func testEmptyTree() {
        XCTAssertEqual(BinaryTreeLevelOrderTraversal.solve(nil), [])
    }

    func testSingleNode() {
        XCTAssertEqual(BinaryTreeLevelOrderTraversal.solve(TreeNode(1)), [[1]])
    }

    func testLeftSkewedTree() {
        let root = TreeNode(1, TreeNode(2, TreeNode(3), nil), nil)

        XCTAssertEqual(BinaryTreeLevelOrderTraversal.solve(root), [[1], [2], [3]])
    }

    func testRightSkewedTreeWithNegativeValues() {
        let root = TreeNode(-1, nil, TreeNode(-2, nil, TreeNode(-3)))

        XCTAssertEqual(BinaryTreeLevelOrderTraversal.solve(root), [[-1], [-2], [-3]])
    }

    func testDuplicateValuesRemainInTheirPositions() {
        let root = TreeNode(2, TreeNode(2), TreeNode(2, TreeNode(2), nil))

        XCTAssertEqual(BinaryTreeLevelOrderTraversal.solve(root), [[2], [2, 2], [2]])
    }

    func testCompleteTreePreservesLeftToRightOrder() {
        let root = TreeNode(
            1,
            TreeNode(2, TreeNode(4), TreeNode(5)),
            TreeNode(3, TreeNode(6), TreeNode(7))
        )

        XCTAssertEqual(
            BinaryTreeLevelOrderTraversal.solve(root),
            [[1], [2, 3], [4, 5, 6, 7]]
        )
    }
}
