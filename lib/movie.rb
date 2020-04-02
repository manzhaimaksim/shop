class Movie < Product
  def self.from_file(path)
    lines = File.readlines(path, chomp: true, encoding: 'UTF-8')
    self.new(
        title: lines[0],
        director: lines[1],
        year: lines[2],
        price: lines[3].to_i,
        amount: lines[4].to_i
    )
  end

  attr_accessor :director, :year

  def initialize(params)
    super

    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "Фильм #{@title}, #{@year}, Режиссер - #{@director}, #{super}"
  end
end
