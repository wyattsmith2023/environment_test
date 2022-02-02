# location: spec/feature/integration_spec.rb
require 'rails_helper'
require 'time'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J K Rowling'
    fill_in 'Price', with: 19.99
    fill_in 'Publish Date', with: Date.new(2007, 7, 21)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J K Rowling')
    expect(page).to have_content('19.99')
    expect(page).to have_content('2007-7-21')
  end
end