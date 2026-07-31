import XCTest
@testable import Grind75Swift

final class BinaryTreeRightSideViewTests: XCTestCase {
    func testStandardExample() {
        let root = TreeNode(
            1,
            TreeNode(2, nil, TreeNode(5)),
            TreeNode(3, nil, TreeNode(4))
        )

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [1, 3, 4])
    }

    func testEmptyTree() {
        XCTAssertEqual(BinaryTreeRightSideView.solve(nil), [])
    }

    func testSingleNode() {
        XCTAssertEqual(BinaryTreeRightSideView.solve(TreeNode(1)), [1])
    }

    func testLeftSkewedTree() {
        let root = TreeNode(1, TreeNode(2, TreeNode(3), nil), nil)

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [1, 2, 3])
    }

    func testRightSkewedTreeWithNegativeValues() {
        let root = TreeNode(-1, nil, TreeNode(-2, nil, TreeNode(-3)))

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [-1, -2, -3])
    }

    func testLeftNodeIsVisibleWhenRightBranchEnds() {
        let root = TreeNode(
            1,
            TreeNode(2, nil, TreeNode(5)),
            TreeNode(3)
        )

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [1, 3, 5])
    }

    func testDuplicateValues() {
        let root = TreeNode(
            2,
            TreeNode(2, TreeNode(2), nil),
            TreeNode(2)
        )

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [2, 2, 2])
    }

    func testCompleteTreeUsesRightmostNodeAtEachLevel() {
        let root = TreeNode(
            1,
            TreeNode(2, TreeNode(4), TreeNode(5)),
            TreeNode(3, TreeNode(6), TreeNode(7))
        )

        XCTAssertEqual(BinaryTreeRightSideView.solve(root), [1, 3, 7])
    }
}
