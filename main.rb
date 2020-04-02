require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []

books_paths = Dir.glob(File.join(__dir__, '/data/books', '*.txt'))

books_paths.each do |path|
  products << Book.from_file(path)
end

movies_paths = Dir.glob(File.join(__dir__, '/data/movies', '*.txt'))

movies_paths.each do |path|
  products << Movie.from_file(path)
end

puts 'Вот какие товары у нас есть'
puts
products.each { |product| puts product }
