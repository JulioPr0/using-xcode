class TaskManager
{
    static let shared = TaskManager()
    private var isPerforming = false
    private var taskList: [() -> ()] = Array()
    
    func performTask()
    {
        isPerforming = true
        
        let executedTasks = taskList
        taskList.removeAll()
        
        executedTasks.forEach {
            $0()
        }
        
        if taskList.count > 0
        {
            performTask()
        }
        else
        {
            isPerforming = false
        }
    }
    
    func appendTask(newTask: @escaping () -> ())
    {
        taskList.append(newTask)
        
        if !isPerforming
        {
            performTask()
        }
    }
}

TaskManager.shared.appendTask
{
    print("Fetch user information...")
    TaskManager.shared.appendTask
    {
        print("Fetch news...")
    }
    print("Print user information...")
}
TaskManager.shared.appendTask
{
    print("Show first screen...")
}
