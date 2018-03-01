class Clothing
  attr_reader :name, :type, :temperature

  def initialize(file_path)
    @name, @type, @temperature = File.readlines(file_path, encoding: 'UTF-8')
    @name = @name.chomp
    @type = @type.chomp
    @temperature = @temperature.chomp
  end

  def split_temperature
    @temperature.delete!('() ').sub(',', '..')
  end

  def to_s
    "#{@name} (#{@type}) #{split_temperature}"
  end
end