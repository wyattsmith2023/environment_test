# location: spec/unit/unit_spec.rb
require 'rails_helper'
require 'time'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
    described_class.new(author: 'J K Rowling')
    described_class.new(price: 19.99)
    described_class.new(date: Date.new(2007, 7, 21))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a publish date' do
    subject.date = nil
    expect(subject).not_to be_valid
  end
end