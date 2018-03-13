require 'rspec'

require_relative '../lib/wardrob'
require_relative '../lib/clothing'

describe 'wardrob.rb' do
  let(:wardrob) do
    files_dir = ["#{__dir__}/../data/01.txt", "#{__dir__}/../data/02.txt"]
    Wardrob.from_dir(Clothing, files_dir)
  end

  it 'should return an instance of wardrob class' do
    expect(wardrob).to be_an_instance_of(Wardrob)
  end

  it 'should be an instance of array' do
    expect(wardrob.collection).to be_an_instance_of(Array)
  end

  it 'should should be an instance of array' do
    expect(wardrob.get_suitable_clothing(20)).to be_an_instance_of(Array)
  end

  it 'should return a string from clothing instance' do
    expect(wardrob.get_suitable_clothing(20)[0].to_s).to eql('Шлепанцы (Обувь) 20..40')
  end
end