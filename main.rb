require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

collection.sort!(by: :price, order: :desc)

puts 'Вот какие товары у нас есть'
puts

collection.to_a.each do |product|
  puts product
end
