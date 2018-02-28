require_relative 'lib/clothing.rb'

current_path = File.dirname(__FILE__)
file_path = current_path + '/data'

file_paths = Dir[file_path + "/*.txt"]

clothes = []
chosen_clothes = []

file_paths.each do |i|
  clothes << Clothing.new(i)
end

puts "Сколько градусов за окном? (можно с минусом)"

user_input = gets.chomp
until user_input =~ /^[\+\-](\d)/ || user_input =~ /^(\d)/
  puts "Введите цифру"
  user_input = gets.chomp
end

user_input = user_input.to_i
clothes.each do |i|
  interval = i.temperature.delete('() ').split(/[\s]|[\,]/)
  case user_input
    when interval[0].to_i..interval[1].to_i then
      chosen_clothes << i
  end
end
puts
puts "Предлагаем сегодня надеть:"
puts
chosen_clothes.each do |i|
  puts i.to_s
end

