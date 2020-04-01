class Movie < Product
  attr_reader :director, :year

  def initialize(params)
    super

    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "Фильм #{@title}, #{@year}, Режиссер - #{@director}, #{super}"
  end
end
