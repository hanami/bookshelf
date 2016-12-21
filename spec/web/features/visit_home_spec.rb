require 'features_helper'

describe 'Visit home' do
  it 'is successful' do
    visit '/'

    page.body.must_include('Bookshelf')
  end
end
