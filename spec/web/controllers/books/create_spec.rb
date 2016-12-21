require 'spec_helper'
require_relative '../../../../apps/web/controllers/books/create'

describe Web::Controllers::Books::Create do
  let(:action) { Web::Controllers::Books::Create.new }

  after do
    BookRepository.new.clear
  end

  describe 'with valid params' do
    let(:params) { Hash[book: { title: '1984', author: 'George Orwell' }] }

    it 'creates a new book' do
      action.call(params)
      action.book.id.wont_be_nil
    end

    it 'redirects the user to the books listing' do
      response = action.call(params)

      response[0].must_equal 302
      response[1]['Location'].must_equal '/books'
    end
  end

  describe 'with invalid params' do
    let(:params) { Hash[book: {}] }

    it 're-renders the books#new view' do
      response = action.call(params)
      response[0].must_equal 422
    end

    it 'sets errors attribute accordingly' do
      response = action.call(params)
      response[0].must_equal 422

      action.params.errors[:book][:title].must_equal  ['is missing']
      action.params.errors[:book][:author].must_equal ['is missing']
    end
  end
end
