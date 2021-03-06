require 'observer'

class Employee

  include Observable
  
  attr_reader :name, :title,
  attr_accessor :salary
  
  def initialize name, title, salary
    @name = name
    @title = title
    @salary = salary
  end
  
  def salary= new_salary
    if new_salary != @salary
      @salary = new_salary
      changed
      notify_observers self
    end
  end

end
