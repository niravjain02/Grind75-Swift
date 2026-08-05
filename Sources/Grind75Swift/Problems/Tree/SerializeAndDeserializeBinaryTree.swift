public final class BinaryTreeCodec {
    private let nullMarker = "#"
    private let separator: Character = ","

    public init() {}

    /// Encodes a binary tree using preorder traversal and explicit null markers.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public func serialize(_ root: TreeNode?) -> String {
        var tokens: [String] = []

        func encode(_ node: TreeNode?) {
            guard let node else {
                tokens.append(nullMarker)
                return
            }

            tokens.append(String(node.val))
            encode(node.left)
            encode(node.right)
        }

        encode(root)
        return tokens.joined(separator: String(separator))
    }

    /// Rebuilds the tree represented by a preorder serialization.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public func deserialize(_ data: String) -> TreeNode? {
        guard !data.isEmpty else {
            return nil
        }

        let tokens = data.split(separator: separator, omittingEmptySubsequences: false)
        var index = 0

        func decode() -> TreeNode? {
            guard index < tokens.count else {
                return nil
            }

            let token = tokens[index]
            index += 1
            guard token != Substring(nullMarker), let value = Int(token) else {
                return nil
            }

            let node = TreeNode(value)
            node.left = decode()
            node.right = decode()
            return node
        }

        return decode()
    }
}
