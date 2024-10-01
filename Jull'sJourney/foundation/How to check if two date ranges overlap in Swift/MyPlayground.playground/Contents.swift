import Foundation

struct ProjectLifeCycle
{
    let startDate: Date
    let deadline: Date
}

func isProjectOverlapped(_ firstProject: ProjectLifeCycle, _ secondProject: ProjectLifeCycle) -> Bool
{
    let firstRange = firstProject.startDate ... firstProject.deadline
    let secondRange = secondProject.startDate ... secondProject.deadline
    
    return firstRange.overlaps(secondRange)
}

let firstProjectLifeCycle = ProjectLifeCycle(startDate: Date.init(), deadline: Date.init(timeIntervalSinceNow: 30 * 24 * 3600))
let secondProjectLifeCycle = ProjectLifeCycle(startDate: Date.init(timeIntervalSinceNow: 10 * 24 * 3600), deadline: Date.init(timeIntervalSinceNow: 40 * 24 * 3600))
isProjectOverlapped(firstProjectLifeCycle, secondProjectLifeCycle)
