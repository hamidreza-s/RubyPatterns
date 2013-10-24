class Portfolio
  include Enumerable
  
  def initialize
    @accounts = []
  end
  
  # implement each to use
  # Enumerable mixin
  def each &block
    @accounts.each &block
  end
  
  def add_account account
    @accounts << account
  end
end
