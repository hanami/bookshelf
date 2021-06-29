require 'features_helper'

RSpec.describe 'List books' do
  let(:repository) { BookRepository.new }
  before do
    repository.clear

    repository.create(title: 'Practical Object-Oriented Design in Ruby', author: 'Sandi Metz')
  end

  it 'displays each book on the page' do
    visit '/books'

    within '#books' do
      expect(page).to have_selector('.book', count: 1), 'Expected to find 1 book'
      expect(page).to have_content('Practical Object-Oriented Design in Ruby')
      expect(page).to have_content('Sandi Metz')
    end
  end
end
