class Disk < Product
  def self.from_file(path)
    lines = File.readlines(path, chomp: true, encoding: 'UTF-8')
    self.new(
        title: lines[0],
        artist: lines[1],
        genre: lines[2],
        year: lines[3],
        price: lines[4].to_i,
        amount: lines[5].to_i
      )
  end

  attr_accessor :artist, :year, :genre

  def initialize(params)
    super

    @artist = params[:artist]
    @genre = params[:genre]
    @year = params[:year]
  end

  def to_s
    "Альбом #{@title}, #{@year}, Исполнитель - #{@artist}, #{super}"
  end
end
