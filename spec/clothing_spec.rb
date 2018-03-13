require 'rspec'
require_relative '../lib/clothing'

describe 'clothing.rb' do
  let(:clothing) do
    Clothing.from_file(__dir__ + '/../data/01.txt')
  end

  it 'should return instance of clothing' do
    expect(clothing).to be_an_instance_of(Clothing)
  end

  it 'should return a type of clothing' do
    expect(clothing.type).to eql('Головной убор')
  end

  it 'should return a name of clothing' do
    expect(clothing.name).to eql('Шапка-ушанка')
  end

  it 'should return a max_temp of clothing' do
    expect(clothing.max_temp).to eql(-20)
  end

  it 'should return arguments of a class instance as a string' do
    expect(clothing.to_s).to eql('Шапка-ушанка (Головной убор) -20..-5')
  end
end