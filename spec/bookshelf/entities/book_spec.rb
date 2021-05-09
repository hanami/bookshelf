# frozen_string_literal: true

require "spec_helper"

module Bookshelf
  module Entities
    describe Book do
      it "can be initialised with attributes" do
        book = Book.new(title: "Refactoring")
        expect(book.title).to eq("Refactoring")
      end
    end
  end
end
