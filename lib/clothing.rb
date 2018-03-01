class Clothing
  attr_reader :name, :type, :max_temp, :min_temp

  def initialize(file_path)
    @name, @type, @temperature = File.readlines(file_path, encoding: 'UTF-8')
    @name = @name.chomp
    @type = @type.chomp
    @max_temp = @temperature.delete('() ').split(',')[0].to_i
    @min_temp = @temperature.delete('() ').split(',')[1].to_i
  end

  def to_s
    "#{@name} (#{@type}) #{@max_temp}..#{@min_temp}"
  end
end