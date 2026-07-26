class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var dependents = Array(repeating: [Int](), count: numCourses)
        var indegrees = Array(repeating: 0, count: numCourses)

        for prerequisite in prerequisites {
            let course = prerequisite[0]
            let requiredCourse = prerequisite[1]
            dependents[requiredCourse].append(course)
            indegrees[course] += 1
        }

        var queue: [Int] = []

        for course in 0..<numCourses where indegrees[course] == 0 {
            queue.append(course)
        }

        var head = 0

        while head < queue.count {
            let completedCourse = queue[head]
            head += 1

            for course in dependents[completedCourse] {
                indegrees[course] -= 1

                if indegrees[course] == 0 {
                    queue.append(course)
                }
            }
        }

        return queue.count == numCourses
    }
}
