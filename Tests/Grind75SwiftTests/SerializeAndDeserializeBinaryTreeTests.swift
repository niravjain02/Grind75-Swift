import XCTest
@testable import Grind75Swift

final class SerializeAndDeserializeBinaryTreeTests: XCTestCase {
    private let codec = BinaryTreeCodec()

    func testStandardExample() {
        let root = TreeNode(1,
                            TreeNode(2),
                            TreeNode(3, TreeNode(4), TreeNode(5)))

        XCTAssertEqual(codec.serialize(root), "1,2,#,#,3,4,#,#,5,#,#")
        XCTAssertTrue(treesAreEqual(codec.deserialize(codec.serialize(root)), root))
    }

    func testEmptyTree() {
        XCTAssertEqual(codec.serialize(nil), "#")
        XCTAssertNil(codec.deserialize("#"))
    }

    func testSingleNode() {
        let decoded = codec.deserialize(codec.serialize(TreeNode(7)))

        XCTAssertEqual(decoded?.val, 7)
        XCTAssertNil(decoded?.left)
        XCTAssertNil(decoded?.right)
    }

    func testNegativeAndDuplicateValues() {
        let root = TreeNode(-1, TreeNode(-1), TreeNode(0, TreeNode(-1), nil))

        XCTAssertTrue(treesAreEqual(codec.deserialize(codec.serialize(root)), root))
    }

    func testSkewedTreePreservesStructure() {
        let root = TreeNode(1, nil, TreeNode(2, nil, TreeNode(3)))
        let decoded = codec.deserialize(codec.serialize(root))

        XCTAssertNil(decoded?.left)
        XCTAssertNil(decoded?.right?.left)
        XCTAssertEqual(decoded?.right?.right?.val, 3)
    }

    func testEmptyStringOutsideLeetCodeContractReturnsNil() {
        XCTAssertNil(codec.deserialize(""))
    }

    private func treesAreEqual(_ lhs: TreeNode?, _ rhs: TreeNode?) -> Bool {
        switch (lhs, rhs) {
        case (nil, nil):
            return true
        case let (left?, right?):
            return left.val == right.val
                && treesAreEqual(left.left, right.left)
                && treesAreEqual(left.right, right.right)
        default:
            return false
        }
    }
}
