class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 1 else {
            return 1
        }

        var twoStepsBack = 1
        var oneStepBack = 2

        guard n > 2 else {
            return oneStepBack
        }

        for _ in 3...n {
            let current = oneStepBack + twoStepsBack
            twoStepsBack = oneStepBack
            oneStepBack = current
        }

        return oneStepBack
    }
}
