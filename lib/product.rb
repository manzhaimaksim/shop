class Product
  attr_accessor :price, :amount, :title

  def self.product_types
    [Book, Movie]
  end

  def self.create(type_index)
    product_types[type_index].new
  end

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @title = params[:title]
  end

  def to_s
    "#{@price} руб. (осталось #{@amount})"
  end

end
