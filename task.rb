class Task
  
  def initialize(name, priority)
    @name = name
    @complete = false
    @priority = priority
  end

  def priority
    return @priority
  end

  def name
    return @name
  end

  def complete
    return @complete
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    if @complete == true
      @complete = false
    else
      @complete = true
    end
  end

end