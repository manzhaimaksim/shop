class Book < Product
  attr_reader :genre, :author

  def initialize(params)
    super

    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Книга #{@title}, #{@genre}, автор - #{@author}, #{super}"
  end
end
