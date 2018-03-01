require_relative 'lib/clothing'

current_path = File.dirname(__FILE__)
file_path = current_path + '/data'

file_paths = Dir[file_path + "/*.txt"]

clothes = []
chosen_clothes = []

file_paths.each do |file_path|
  clothes << Clothing.new(file_path)
end

puts "Сколько градусов за окном? (можно с минусом)"

user_input = gets.chomp
until user_input =~ /^[\+\-](\d)/ || user_input =~ /^(\d)/
  puts "Введите цифру"
  user_input = gets.chomp
end

user_input = user_input.to_i
clothes.each do |clothing|
  case user_input
    when clothing.max_temp..clothing.min_temp then chosen_clothes << clothing
  end
end

puts
puts "Предлагаем сегодня надеть:"
puts
chosen_clothes.each do |clothing|
  puts clothing
end

