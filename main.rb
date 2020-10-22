require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/disk'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

collection.sort!(by: :price, order: :desc)

puts 'Что желаете купить?'
puts

basket = []

loop do
  puts collection.to_s
  puts '0. Выход'
  user_choice = STDIN.gets.to_i

  break if user_choice.zero? || !user_choice.between?(1, collection.to_a.size)

  chosen_product = collection.product_by_index(user_choice)

  chosen_product.amount -= 1
  basket << chosen_product
  puts "Вы выбрали: #{chosen_product}"
  puts
end

puts 'Вы купили:'
basket.each { |product| puts product }
puts "Всего товаров на сумму: #{basket.sum(&:price)} руб."
