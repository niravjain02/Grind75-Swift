import XCTest
@testable import Grind75Swift

final class KthSmallestElementInABSTTests: XCTestCase {
    func testStandardExample() {
        let root = TreeNode(
            3,
            TreeNode(1, nil, TreeNode(2)),
            TreeNode(4)
        )

        XCTAssertEqual(KthSmallestElementInABST.solve(root, k: 1), 1)
    }

    func testSecondStandardExample() {
        let root = TreeNode(
            5,
            TreeNode(3, TreeNode(2, TreeNode(1), nil), TreeNode(4)),
            TreeNode(6)
        )

        XCTAssertEqual(KthSmallestElementInABST.solve(root, k: 3), 3)
    }

    func testSingleNode() {
        XCTAssertEqual(KthSmallestElementInABST.solve(TreeNode(7), k: 1), 7)
    }

    func testKCanSelectLargestValue() {
        let root = TreeNode(2, TreeNode(1), TreeNode(3))

        XCTAssertEqual(KthSmallestElementInABST.solve(root, k: 3), 3)
    }

    func testNegativeValues() {
        let root = TreeNode(-3, TreeNode(-5), TreeNode(-1))

        XCTAssertEqual(KthSmallestElementInABST.solve(root, k: 2), -3)
    }

    func testRightSkewedTree() {
        let root = TreeNode(1, nil, TreeNode(2, nil, TreeNode(3)))

        XCTAssertEqual(KthSmallestElementInABST.solve(root, k: 2), 2)
    }

    func testLeftSkewedTree() {
        let root = TreeNode(3, TreeNode(2, TreeNode(1), nil), nil)

        XCTAssertEqual(KthSmallestElementInABST.solve(root, k: 2), 2)
    }

    func testInvalidInputsOutsideConstraintsReturnZero() {
        XCTAssertEqual(KthSmallestElementInABST.solve(nil, k: 1), 0)
        XCTAssertEqual(KthSmallestElementInABST.solve(TreeNode(1), k: 0), 0)
        XCTAssertEqual(KthSmallestElementInABST.solve(TreeNode(1), k: 2), 0)
    }
}
