
def leap?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  year % 4 == 0
end

def howmanydays(year, month, day)
  days_of_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  days_of_months[1] = 29 if leap?(year)

  day + days_of_months.take(month - 1).sum
end

puts "порядковый номер даты"
print "год"
year = gets.chomp.to_i
print "месяц"
month = gets.chomp.to_i
print "день"
day = gets.chomp.to_i

puts howmanydays(year, month, day)
