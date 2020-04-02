class Book < Product
  def self.from_file(path)
    lines = File.readlines(path, chomp: true, encoding: 'UTF-8')
    self.new(
        title: lines[0],
        genre: lines[1],
        author: lines[2],
        price: lines[3].to_i,
        amount: lines[4].to_i
      )
  end

  attr_accessor :genre, :author

  def initialize(params)
    super

    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Книга #{@title}, #{@genre}, автор - #{@author}, #{super}"
  end
end
