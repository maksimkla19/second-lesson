
goods = {}

def trim(float)
  float == float.to_i ? float.to_i : float
end

puts 'Сумма покупок. Выход: стоп, exit'
puts 'Введите название товара, цену за единицу и количество купленного товара'
loop do
  print 'Товар: '
  product = gets.chomp.to_s
  break if product == 'стоп' || product == 'exit'

  print 'Цена: '
  price = gets.chomp.to_f
  print 'Количество: '
  quantity = gets.chomp.to_f

  goods[product] = {price: price, quantity: quantity}
end

puts goods
puts "============================"
puts "====== Список товаров ======"
puts "Товар \t| Цена \t| Кол \t| Сумма"

total = 0
goods.each do |el|
  price = trim(el.last[:price])
  quantity = trim(el.last[:quantity])
  sum = trim((price * quantity).round(2))
  puts "#{el.first} \t| #{price} \t| #{quantity} \t| #{sum}"
  total += sum
end

puts "Итого: #{total}"
