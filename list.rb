class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    return incomplete_task_names.length
  end

  def delete_complete_tasks
    @tasks.delete_if do |task| 
      task.complete
    end
  end

  def sort_by_priority
    @tasks.sort! do |task_1, task_2|
      task_2.priority <=> task_1.priority
    end
    task_names_priority = []
    @tasks.each do |task|
      task_names_priority << [task.name, task.priority]
    end
    return task_names_priority
  end

end