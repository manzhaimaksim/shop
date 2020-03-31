class Product
  attr_reader :price, :amount

  def initialize(price:, amount:)
    @price = price
    @amount = amount
  end
end
