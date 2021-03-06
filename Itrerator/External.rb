# java-like external iterator

class ArrayIterator
  def initialize array
    # deep copy for change-resistancy
    @array = Array.new(array)
    @index = 0
  end
  def has_next?
    @index < @array.length
  end
  def item
    @array[@index]
  end
  def next_item
    value = @array[@index]
    @index += 1
    value
  end
end


