class Item
  attr_accessor :name, :price

  @@items =[]
  def initialize(name,price)
    @name = name
    @price = price
    @@item << self
  end
end
