# frozen_string_literal: true

require "spec_helper"

describe Main::Actions::Books::Create do
  let(:action) { Main::Actions::Books::Create.new }
  let(:repository) { Bookshelf::Repositories::BookRepository.new }

  after do
    repository.books.delete
  end

  describe "with valid params" do
    let(:params) { {book: {title: "1984", author: "George Orwell"}} }

    it "creates a new book" do
      action.call(params)
      book = repository.books.last

      expect(book.id).to_not be_nil
      expect(book.title).to eq(params.dig(:book, :title))
    end

    it "redirects the user to the books listing" do
      response = action.call(params)

      expect(response.status).to eq(302)
      expect(response.headers["Location"]).to eq("/books")
    end
  end

  describe "with invalid params" do
    let(:params) { {book: {}} }

    it "re-renders the books#new view" do
      response = action.call(params)
      expect(response.status).to eq(422)
    end

    it "sets errors attribute accordingly" do
      response = action.call(params)
      errors = response.request.params.errors

      expect(errors.dig(:book, :title)).to eq(["is missing"])
      expect(errors.dig(:book, :author)).to eq(["is missing"])
    end
  end
end
