require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []

leon = Movie.new(price: 100,
                 amount: 10,
                 title: 'Леон',
                 director: 'Люк Бессон',
                 year: 1994)


durak = Movie.new(price: 150,
                      amount: 5,
                      title: 'Дурак',
                      director: 'Юрий быков',
                      year: 2014)

master_and_margarita = Book.new(price: 400,
                      amount: 25,
                      title: 'Мастер и Маргарита',
                      author: 'Михаил Булгаков',
                      genre: 'роман')

master_and_margarita.amount = 20

[leon, durak, master_and_margarita].each { |product| products << product }

puts 'Вот какие товары у нас есть'
puts
products.each { |product| puts product }
