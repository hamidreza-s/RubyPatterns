module Observer

  def initialize
    @observers = []
  end

  def notify_observers
    @observers.each do |observer|
      observer.call self
    end
  end
  
  def add_observer &observer
    @observers << observer
  end
  
  def delete_observer observer
    @observers.delete observer
  end
  
end
