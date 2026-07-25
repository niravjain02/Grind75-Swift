import XCTest
@testable import Grind75Swift

final class MaximumDepthOfBinaryTreeTests: XCTestCase {
    func testStandardExample() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(7))
        )

        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(root), 3)
    }

    func testTwoNodeExample() {
        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(TreeNode(1, nil, TreeNode(2))), 2)
    }

    func testEmptyTree() {
        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(nil), 0)
    }

    func testSingleNode() {
        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(TreeNode(-1)), 1)
    }

    func testLeftSkewedTree() {
        let root = TreeNode(1, TreeNode(2, TreeNode(3, TreeNode(4), nil), nil), nil)

        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(root), 4)
    }

    func testUnevenSubtreesUsesDeeperSide() {
        let root = TreeNode(
            1,
            TreeNode(2),
            TreeNode(3, nil, TreeNode(4, nil, TreeNode(5)))
        )

        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(root), 4)
    }

    func testDuplicateAndNegativeValuesDoNotAffectDepth() {
        let root = TreeNode(-2, TreeNode(-2), TreeNode(-2, TreeNode(-2), nil))

        XCTAssertEqual(MaximumDepthOfBinaryTree.solve(root), 3)
    }
}
