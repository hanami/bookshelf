# frozen_string_literal: true

require "spec_helper"
require_relative "../../../slices/main/entities/book" # FIXME: shouldn't be necessary

module Main
  module Entities
    RSpec.describe Book do
      it "can be created with Factory.structs" do
        # This wouldn't be in a real codebase. It's just for education
        book = Factory.structs[:book]
        expect(book.title).to eq("Refactoring")
        expect(book.author).to eq("Martin Fowler")
      end

      it "can be created with overrides and Factory.structs" do
        # This wouldn't be in a real codebase. It's just for education
        book = Factory.structs[:book,
                               title: "Domain Driven Design",
                               author: "Eric Evans"]
        expect(book.title).to eq("Domain Driven Design")
        expect(book.author).to eq("Eric Evans")
      end
    end
  end
end
