require 'features_helper'

RSpec.describe 'Visit home' do
  it 'is successful' do
    visit '/'

    expect(page).to have_content('Bookshelf')
  end
end
