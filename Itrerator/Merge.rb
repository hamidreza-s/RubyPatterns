class MergeIterator
  def self.merge array_1, array_2

    # initialize result
    merged = []
    
    # sort each
    array_1.sort! and array_2.sort!
    
    # get array into iterator
    iterator_1 = ArrayIterator.new array_1
    iterator_2 = ArrayIterator.new array_2
    
    # iterate and sort both
    while iterator_1.has_next? and iterator_2.has_next?
      if iterator_1.item < iterator_2.item
        merged << iterator_1.next_item
      else
        merged << iterator_2.next_item
      end
    end
    
    # pick up the leftovers from array_1
    while iterator_1.has_next?
      merged << iterator_1.next_item
    end
    
    # pick up the leftovers from array_2
    while iterator_2.has_next?
      merged << iterator_2.next_item
    end
    
    merged
  end
end
