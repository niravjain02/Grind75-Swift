/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 * }
 */
class Codec {
    func serialize(_ root: TreeNode?) -> String {
        var tokens: [String] = []

        func encode(_ node: TreeNode?) {
            guard let node else {
                tokens.append("#")
                return
            }

            tokens.append(String(node.val))
            encode(node.left)
            encode(node.right)
        }

        encode(root)
        return tokens.joined(separator: ",")
    }

    func deserialize(_ data: String) -> TreeNode? {
        let tokens = data.split(separator: ",")
        var index = 0

        func decode() -> TreeNode? {
            let token = tokens[index]
            index += 1
            guard token != "#" else {
                return nil
            }

            let node = TreeNode(Int(token)!)
            node.left = decode()
            node.right = decode()
            return node
        }

        return decode()
    }
}

// Your Codec object will be instantiated and called as such:
// var ser = Codec()
// var deser = Codec()
// deser.deserialize(ser.serialize(root))
