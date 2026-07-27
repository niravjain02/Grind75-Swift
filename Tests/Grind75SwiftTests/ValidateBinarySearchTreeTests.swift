import XCTest
@testable import Grind75Swift

final class ValidateBinarySearchTreeTests: XCTestCase {
    func testStandardValidExample() {
        XCTAssertTrue(
            ValidateBinarySearchTree.solve(TreeNode(2, TreeNode(1), TreeNode(3)))
        )
    }

    func testStandardInvalidExample() {
        let root = TreeNode(
            5,
            TreeNode(1),
            TreeNode(4, TreeNode(3), TreeNode(6))
        )

        XCTAssertFalse(ValidateBinarySearchTree.solve(root))
    }

    func testEmptyTree() {
        XCTAssertTrue(ValidateBinarySearchTree.solve(nil))
    }

    func testSingleNode() {
        XCTAssertTrue(ValidateBinarySearchTree.solve(TreeNode(-1)))
    }

    func testDuplicateValueIsInvalid() {
        XCTAssertFalse(
            ValidateBinarySearchTree.solve(TreeNode(2, TreeNode(2), TreeNode(3)))
        )
    }

    func testDeepOrderingViolation() {
        let root = TreeNode(
            10,
            TreeNode(5, nil, TreeNode(12)),
            TreeNode(15)
        )

        XCTAssertFalse(ValidateBinarySearchTree.solve(root))
    }

    func testNegativeValues() {
        let root = TreeNode(-3, TreeNode(-5), TreeNode(-1))

        XCTAssertTrue(ValidateBinarySearchTree.solve(root))
    }

    func testIntegerExtremesDoNotRequireSentinelBounds() {
        let root = TreeNode(0, TreeNode(Int.min), TreeNode(Int.max))

        XCTAssertTrue(ValidateBinarySearchTree.solve(root))
    }
}
