def for_each_element array
  # deef copy for change-resistancy
  array = Array.new(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

array = ['red', 'green', 'blue']
for_each_element array do |item|
  puts item
end
