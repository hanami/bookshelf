# frozen_string_literal: true

require "spec_helper"

describe Main::Views::Books::Index do
  let(:view) { Main::Views::Books::Index.new }
  let(:books) { Array[] }
  let(:rendered) { view.call(books: books) }

  it "exposes #books" do
    expect(rendered.locals[:books].value).to eq(books)
  end

  describe "when there are no books" do
    it "shows a placeholder message" do
      expect(rendered.to_s).to include('<p class="placeholder">There are no books yet.</p>')
    end
  end

  describe "when there are books" do
    let(:book1) { Factory.structs[:book, title: "Refactoring", author: "Martin Fowler"] }
    let(:book2) { Factory.structs[:book, title: "Domain Driven Design", author: "Eric Evans"] }
    let(:books) { [book1, book2] }

    it "lists them all" do
      expect(rendered.to_s.scan(/class="book"/).length).to eq(2)
      expect(rendered.to_s).to include("Refactoring")
      expect(rendered.to_s).to include("Domain Driven Design")
    end

    it "hides the placeholder message" do
      expect(rendered.to_s).to_not include('<p class="placeholder">There are no books yet.</p>')
    end
  end
end
