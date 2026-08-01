import XCTest
@testable import Grind75Swift

final class ConstructBinaryTreeFromPreorderAndInorderTraversalTests: XCTestCase {
    func testStandardExample() {
        let root = ConstructBinaryTreeFromPreorderAndInorderTraversal.solve(
            [3, 9, 20, 15, 7],
            [9, 3, 15, 20, 7]
        )

        XCTAssertEqual(preorderValues(root), [3, 9, 20, 15, 7])
        XCTAssertEqual(inorderValues(root), [9, 3, 15, 20, 7])
        XCTAssertEqual(root?.right?.left?.val, 15)
    }

    func testEmptyTraversals() {
        XCTAssertNil(ConstructBinaryTreeFromPreorderAndInorderTraversal.solve([], []))
    }

    func testSingleNode() {
        let root = ConstructBinaryTreeFromPreorderAndInorderTraversal.solve([-1], [-1])

        XCTAssertEqual(root?.val, -1)
        XCTAssertNil(root?.left)
        XCTAssertNil(root?.right)
    }

    func testLeftSkewedTree() {
        let preorder = [4, 3, 2, 1]
        let inorder = [1, 2, 3, 4]
        let root = ConstructBinaryTreeFromPreorderAndInorderTraversal.solve(preorder, inorder)

        XCTAssertEqual(preorderValues(root), preorder)
        XCTAssertEqual(inorderValues(root), inorder)
        XCTAssertEqual(root?.left?.left?.left?.val, 1)
    }

    func testRightSkewedTree() {
        let preorder = [1, 2, 3, 4]
        let inorder = [1, 2, 3, 4]
        let root = ConstructBinaryTreeFromPreorderAndInorderTraversal.solve(preorder, inorder)

        XCTAssertEqual(preorderValues(root), preorder)
        XCTAssertEqual(inorderValues(root), inorder)
        XCTAssertEqual(root?.right?.right?.right?.val, 4)
    }

    func testBalancedTreeWithNegativeValues() {
        let preorder = [0, -3, -4, -2, 5, 2, 8]
        let inorder = [-4, -3, -2, 0, 2, 5, 8]
        let root = ConstructBinaryTreeFromPreorderAndInorderTraversal.solve(preorder, inorder)

        XCTAssertEqual(preorderValues(root), preorder)
        XCTAssertEqual(inorderValues(root), inorder)
    }

    func testInvalidTraversalsOutsideLeetCodeConstraints() {
        XCTAssertNil(
            ConstructBinaryTreeFromPreorderAndInorderTraversal.solve([1, 2], [2])
        )
        XCTAssertNil(
            ConstructBinaryTreeFromPreorderAndInorderTraversal.solve([1, 1], [1, 1])
        )
        XCTAssertNil(
            ConstructBinaryTreeFromPreorderAndInorderTraversal.solve([1, 2], [1, 3])
        )
    }

    private func preorderValues(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }
        return [root.val] + preorderValues(root.left) + preorderValues(root.right)
    }

    private func inorderValues(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }
        return inorderValues(root.left) + [root.val] + inorderValues(root.right)
    }
}
