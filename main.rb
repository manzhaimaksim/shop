require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/disk'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

collection.sort!(by: :price, order: :desc)

puts 'Что желаете купить?'
puts

total = 0
basket = []

loop do
  puts collection
  puts '0. Выход'
  user_choice = STDIN.gets.to_i

  break if user_choice.zero?

  collection.product_by_index(user_choice).amount -= 1
  basket << collection.product_by_index(user_choice)
  puts "Вы выбрали: #{collection.product_by_index(user_choice)}"
  puts
  total += collection.product_by_index(user_choice).price
end

puts 'Вы купили:'
basket.each { |product| puts product }
puts "Всего товаров на сумму: #{total} руб."
