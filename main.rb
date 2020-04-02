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
  collection.to_a.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"
  end
  puts '0. Выход'

  user_choice = STDIN.gets.to_i

  if user_choice.zero?
    puts 'Вы купили:'
    basket.each { |product| puts product }
    puts "С вас #{total} руб. Спасибо за покупки!"
    break
  end

  basket << collection.to_a[user_choice - 1]
  collection.to_a[user_choice - 1].amount -= 1
  puts "Вы выбрали: #{collection.to_a[user_choice - 1]}"

  total += collection.to_a[user_choice - 1].price
  puts "Всего товаров на сумму: #{total} руб."
end
