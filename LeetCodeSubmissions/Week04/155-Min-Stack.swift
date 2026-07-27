class MinStack {
    private var entries: [(value: Int, minimum: Int)] = []

    init() {}

    func push(_ val: Int) {
        let minimum = min(val, entries.last?.minimum ?? val)
        entries.append((val, minimum))
    }

    func pop() {
        entries.removeLast()
    }

    func top() -> Int {
        entries.last!.value
    }

    func getMin() -> Int {
        entries.last!.minimum
    }
}
