# location: spec/feature/integration_spec.rb
require 'rails_helper'
require 'time'

RSpec.describe 'Creating a book with', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J K Rowling'
    fill_in 'Price', with: 19.99
    select('2020', from: 'book_date_1i')
    select('January', from: 'book_date_2i')
    select('31', from: 'book_date_3i')
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with', type: :feature do
  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J K Rowling'
    fill_in 'Price', with: 19.99
    select('2020', from: 'book_date_1i')
    select('January', from: 'book_date_2i')
    select('31', from: 'book_date_3i')
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J K Rowling')
  end
end

RSpec.describe 'Creating a book with', type: :feature do
  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J K Rowling'
    fill_in 'Price', with: 19.99
    select('2020', from: 'book_date_1i')
    select('January', from: 'book_date_2i')
    select('31', from: 'book_date_3i')
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('19.99')
  end
end

RSpec.describe 'Creating a book with', type: :feature do
  scenario 'valid date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J K Rowling'
    fill_in 'Price', with: 19.99
    select('2020', from: 'book_date_1i')
    select('January', from: 'book_date_2i')
    select('31', from: 'book_date_3i')
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2020-01-31')
  end
end