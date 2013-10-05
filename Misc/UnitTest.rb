require 'test/unit'

class FooBar < Test::Unit::TestCase

  # run before each
  def setup
    @foo = true
    @bar = false
  end
  
  # run after each
  def teardown
    # {do sth} #
  end
  
  # run as test
  def test_foo
    assert @foo
  end
  
  # run as test
  def test_bar
    assert ! @bar
  end

end
