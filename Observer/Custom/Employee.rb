class Employee
  include Observer

  attr_reader :name
  attr_accessor :title, :salary
  
  def initialize name, title, salary
    # call Observer initialize with no args
    # because of parantheses
    super()
    @name = name
    @title = title
    @salary = salary
    @observers = []
  end
  
  def salary= new_salary
    if new_salary != @salary
      @salary = new_salary
      notify_observers
    end
  end
  
end

