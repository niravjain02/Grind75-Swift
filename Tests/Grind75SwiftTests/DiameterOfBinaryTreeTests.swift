import XCTest
@testable import Grind75Swift

final class DiameterOfBinaryTreeTests: XCTestCase {
    func testStandardExample() {
        let root = TreeNode(
            1,
            TreeNode(2, TreeNode(4), TreeNode(5)),
            TreeNode(3)
        )

        XCTAssertEqual(DiameterOfBinaryTree.solve(root), 3)
    }

    func testTwoNodeExample() {
        XCTAssertEqual(DiameterOfBinaryTree.solve(TreeNode(1, TreeNode(2), nil)), 1)
    }

    func testEmptyTree() {
        XCTAssertEqual(DiameterOfBinaryTree.solve(nil), 0)
    }

    func testSingleNode() {
        XCTAssertEqual(DiameterOfBinaryTree.solve(TreeNode(-1)), 0)
    }

    func testSkewedTree() {
        let root = TreeNode(-1, TreeNode(-2, TreeNode(-3, TreeNode(-4), nil), nil), nil)

        XCTAssertEqual(DiameterOfBinaryTree.solve(root), 3)
    }

    func testLongestPathDoesNotPassThroughRoot() {
        let root = TreeNode(
            1,
            TreeNode(
                2,
                TreeNode(3, TreeNode(5), TreeNode(6)),
                TreeNode(4, TreeNode(7), TreeNode(8))
            ),
            nil
        )

        XCTAssertEqual(DiameterOfBinaryTree.solve(root), 4)
    }

    func testDuplicateValuesDoNotAffectDiameter() {
        let root = TreeNode(2, TreeNode(2, TreeNode(2), nil), TreeNode(2))

        XCTAssertEqual(DiameterOfBinaryTree.solve(root), 3)
    }
}
