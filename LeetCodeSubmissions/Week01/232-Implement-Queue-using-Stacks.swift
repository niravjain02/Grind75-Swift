final class MyQueue {
    private var input: [Int] = []
    private var output: [Int] = []

    init() {}

    func push(_ x: Int) {
        input.append(x)
    }

    func pop() -> Int {
        moveToOutputIfNeeded()
        return output.removeLast()
    }

    func peek() -> Int {
        moveToOutputIfNeeded()
        return output.last!
    }

    func empty() -> Bool {
        input.isEmpty && output.isEmpty
    }

    private func moveToOutputIfNeeded() {
        guard output.isEmpty else {
            return
        }

        while let value = input.popLast() {
            output.append(value)
        }
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
