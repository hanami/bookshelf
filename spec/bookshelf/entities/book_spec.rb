require 'spec_helper'

describe Book do
  it 'can be initialised with attributes' do
    book = Book.new(title: 'Refactoring')
    expect(book.title).to eq('Refactoring')
  end
end
