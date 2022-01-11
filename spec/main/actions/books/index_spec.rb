# frozen_string_literal: true

require "spec_helper"

RSpec.describe Main::Actions::Books::Index do
  let(:action) { described_class.new }
  let(:params) { Hash[] }
  let(:repository) { Main::Slice.container["repositories.book_repository"] }

  before do
    repository.books.delete
  end

  let(:book) { repository.create(title: 'TDD', author: 'Kent Beck') }

  it "is successful" do
    book
    response = action.call(params)
    expect(response.status).to eq(200)
  end

  it "exposes all books" do
    book
    response = action.call(params)
    expect(response.exposures[:books]).to eq([book])
  end
end
