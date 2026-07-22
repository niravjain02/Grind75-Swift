import XCTest
@testable import Grind75Swift

final class BalancedBinaryTreeTests: XCTestCase {
    func testStandardBalancedExample() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(7))
        )

        XCTAssertTrue(BalancedBinaryTree.solve(root))
    }

    func testStandardUnbalancedExample() {
        let root = TreeNode(
            1,
            TreeNode(2, TreeNode(3, TreeNode(4), TreeNode(4)), TreeNode(3)),
            TreeNode(2)
        )

        XCTAssertFalse(BalancedBinaryTree.solve(root))
    }

    func testEmptyTree() {
        XCTAssertTrue(BalancedBinaryTree.solve(nil))
    }

    func testSingleNode() {
        XCTAssertTrue(BalancedBinaryTree.solve(TreeNode(-1)))
    }

    func testHeightDifferenceOfOneIsBalanced() {
        let root = TreeNode(1, TreeNode(2, TreeNode(3), nil), TreeNode(2))

        XCTAssertTrue(BalancedBinaryTree.solve(root))
    }

    func testDuplicateAndNegativeValuesDoNotAffectBalance() {
        let root = TreeNode(-2, TreeNode(-2), TreeNode(-2, TreeNode(-2), nil))

        XCTAssertTrue(BalancedBinaryTree.solve(root))
    }

    func testDeepImbalanceBelowBalancedRootHeights() {
        let root = TreeNode(
            1,
            TreeNode(2, TreeNode(3, TreeNode(4), nil), nil),
            TreeNode(2, nil, TreeNode(3, nil, TreeNode(4)))
        )

        XCTAssertFalse(BalancedBinaryTree.solve(root))
    }
}
