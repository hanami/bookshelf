# frozen_string_literal: true

require "spec_helper"
require_relative "../../../../apps/web/controllers/books/create"

describe Web::Controllers::Books::Create do
  let(:action) { Web::Controllers::Books::Create.new }
  let(:repository) { BookRepository.new }

  before do
    repository.clear
  end

  describe "with valid params" do
    let(:params) { {book: {title: "1984", author: "George Orwell"}} }

    it "creates a new book" do
      action.call(params)
      book = repository.last

      expect(book.id).to_not be_nil
      expect(book.title).to eq(params.dig(:book, :title))
    end

    it "redirects the user to the books listing" do
      response = action.call(params)

      expect(response[0]).to eq(302)
      expect(response[1]["Location"]).to eq("/books")
    end
  end

  describe "with invalid params" do
    let(:params) { {book: {}} }

    it "re-renders the books#new view" do
      response = action.call(params)
      expect(response[0]).to eq(422)
    end

    it "sets errors attribute accordingly" do
      action.call(params)
      errors = action.params.errors

      expect(errors.dig(:book, :title)).to eq(["is missing"])
      expect(errors.dig(:book, :author)).to eq(["is missing"])
    end
  end
end
