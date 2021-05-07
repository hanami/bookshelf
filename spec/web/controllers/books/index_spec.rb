# frozen_string_literal: true

require "spec_helper"
require_relative "../../../../apps/web/controllers/books/index"

describe Web::Controllers::Books::Index do
  let(:action) { Web::Controllers::Books::Index.new }
  let(:params) { Hash[] }
  let(:repository) { BookRepository.new }

  before do
    repository.clear
    @book = repository.create(title: "TDD", author: "Kent Beck")
  end

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq(200)
  end

  it "exposes all books" do
    action.call(params)
    expect(action.exposures[:books]).to eq([@book])
  end
end
