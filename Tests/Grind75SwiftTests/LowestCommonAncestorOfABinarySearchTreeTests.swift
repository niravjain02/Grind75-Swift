import XCTest
@testable import Grind75Swift

final class LowestCommonAncestorOfABinarySearchTreeTests: XCTestCase {
    func testStandardExampleTargetsOnOppositeSides() {
        let tree = makeStandardTree()

        let ancestor = LowestCommonAncestorOfABinarySearchTree.solve(
            tree.root,
            tree.node2,
            tree.node8
        )

        XCTAssertTrue(ancestor === tree.root)
    }

    func testStandardExampleAncestorIsOneTarget() {
        let tree = makeStandardTree()

        let ancestor = LowestCommonAncestorOfABinarySearchTree.solve(
            tree.root,
            tree.node2,
            tree.node4
        )

        XCTAssertTrue(ancestor === tree.node2)
    }

    func testTargetOrderDoesNotMatter() {
        let tree = makeStandardTree()

        let ancestor = LowestCommonAncestorOfABinarySearchTree.solve(
            tree.root,
            tree.node4,
            tree.node2
        )

        XCTAssertTrue(ancestor === tree.node2)
    }

    func testBothTargetsInRightSubtree() {
        let tree = makeStandardTree()

        let ancestor = LowestCommonAncestorOfABinarySearchTree.solve(
            tree.root,
            tree.node7,
            tree.node9
        )

        XCTAssertTrue(ancestor === tree.node8)
    }

    func testNegativeValues() {
        let nodeMinus10 = TreeNode(-10)
        let nodeMinus3 = TreeNode(-3)
        let root = TreeNode(-5, nodeMinus10, nodeMinus3)

        let ancestor = LowestCommonAncestorOfABinarySearchTree.solve(
            root,
            nodeMinus10,
            nodeMinus3
        )

        XCTAssertTrue(ancestor === root)
    }

    func testSkewedTree() {
        let node4 = TreeNode(4)
        let node3 = TreeNode(3, nil, node4)
        let node2 = TreeNode(2, nil, node3)
        let root = TreeNode(1, nil, node2)

        let ancestor = LowestCommonAncestorOfABinarySearchTree.solve(root, node3, node4)

        XCTAssertTrue(ancestor === node3)
    }

    func testEmptyTreeReturnsNil() {
        XCTAssertNil(
            LowestCommonAncestorOfABinarySearchTree.solve(nil, TreeNode(1), TreeNode(2))
        )
    }

    func testMissingTargetReturnsNil() {
        XCTAssertNil(
            LowestCommonAncestorOfABinarySearchTree.solve(TreeNode(1), nil, TreeNode(1))
        )
    }

    private func makeStandardTree() -> (
        root: TreeNode,
        node2: TreeNode,
        node4: TreeNode,
        node7: TreeNode,
        node8: TreeNode,
        node9: TreeNode
    ) {
        let node0 = TreeNode(0)
        let node3 = TreeNode(3)
        let node5 = TreeNode(5)
        let node4 = TreeNode(4, node3, node5)
        let node2 = TreeNode(2, node0, node4)
        let node7 = TreeNode(7)
        let node9 = TreeNode(9)
        let node8 = TreeNode(8, node7, node9)
        let root = TreeNode(6, node2, node8)
        return (root, node2, node4, node7, node8, node9)
    }
}
