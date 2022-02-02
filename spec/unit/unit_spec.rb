# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
        title: 'harry potter',
        author: 'J K Rowling',
        price: 19.99,
        date:'2020-01-31'
        )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
    subject.title = 'harry potter'
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
    subject.author = 'J K Rowling'
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
    subject.price = 19.99
  end

  it 'is not valid without a publish date' do
    subject.date = nil
    expect(subject).not_to be_valid
    subject.date = '2020-01-31'
  end
end