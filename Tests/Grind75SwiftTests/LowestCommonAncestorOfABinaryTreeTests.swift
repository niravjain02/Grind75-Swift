import XCTest
@testable import Grind75Swift

final class LowestCommonAncestorOfABinaryTreeTests: XCTestCase {
    func testStandardExampleTargetsOnOppositeSides() {
        let tree = makeStandardTree()

        let ancestor = LowestCommonAncestorOfABinaryTree.solve(
            tree.root,
            tree.node5,
            tree.node1
        )

        XCTAssertTrue(ancestor === tree.root)
    }

    func testStandardExampleAncestorIsOneTarget() {
        let tree = makeStandardTree()

        let ancestor = LowestCommonAncestorOfABinaryTree.solve(
            tree.root,
            tree.node5,
            tree.node4
        )

        XCTAssertTrue(ancestor === tree.node5)
    }

    func testTargetsInSameSubtree() {
        let tree = makeStandardTree()

        let ancestor = LowestCommonAncestorOfABinaryTree.solve(
            tree.root,
            tree.node6,
            tree.node4
        )

        XCTAssertTrue(ancestor === tree.node5)
    }

    func testDuplicateValuesUseNodeIdentity() {
        let leftLeaf = TreeNode(7)
        let rightLeaf = TreeNode(7)
        let left = TreeNode(7, leftLeaf, nil)
        let right = TreeNode(7, nil, rightLeaf)
        let root = TreeNode(7, left, right)

        let ancestor = LowestCommonAncestorOfABinaryTree.solve(root, leftLeaf, rightLeaf)

        XCTAssertTrue(ancestor === root)
    }

    func testNegativeValues() {
        let left = TreeNode(-2)
        let right = TreeNode(-3)
        let root = TreeNode(-1, left, right)

        let ancestor = LowestCommonAncestorOfABinaryTree.solve(root, left, right)

        XCTAssertTrue(ancestor === root)
    }

    func testSkewedTree() {
        let node4 = TreeNode(4)
        let node3 = TreeNode(3, nil, node4)
        let node2 = TreeNode(2, nil, node3)
        let root = TreeNode(1, nil, node2)

        let ancestor = LowestCommonAncestorOfABinaryTree.solve(root, node3, node4)

        XCTAssertTrue(ancestor === node3)
    }

    func testEmptyTreeReturnsNil() {
        XCTAssertNil(
            LowestCommonAncestorOfABinaryTree.solve(nil, TreeNode(1), TreeNode(2))
        )
    }

    func testNilTargetReturnsNilOutsideConstraints() {
        let root = TreeNode(1)
        XCTAssertNil(LowestCommonAncestorOfABinaryTree.solve(root, nil, root))
        XCTAssertNil(LowestCommonAncestorOfABinaryTree.solve(root, root, nil))
    }

    private func makeStandardTree() -> (
        root: TreeNode,
        node5: TreeNode,
        node1: TreeNode,
        node6: TreeNode,
        node4: TreeNode
    ) {
        let node6 = TreeNode(6)
        let node7 = TreeNode(7)
        let node4 = TreeNode(4)
        let node2 = TreeNode(2, node7, node4)
        let node5 = TreeNode(5, node6, node2)
        let node0 = TreeNode(0)
        let node8 = TreeNode(8)
        let node1 = TreeNode(1, node0, node8)
        let root = TreeNode(3, node5, node1)
        return (root, node5, node1, node6, node4)
    }
}
