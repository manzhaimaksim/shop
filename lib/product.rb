class Product
  def self.from_file(path)
    raise NotImplementedError
  end

  attr_accessor :price, :amount, :title

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @title = params[:title]
  end

  def to_s
    "#{@price} руб. (осталось #{@amount})"
  end

  def from_file
    # NotImplementedError
  end

end
