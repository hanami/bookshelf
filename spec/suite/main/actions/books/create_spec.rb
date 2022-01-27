# frozen_string_literal: true

require "spec_helper"

RSpec.describe Main::Actions::Books::Create, :db do
  let(:action) { described_class.new(book_repository: repository) }
  let(:repository) { instance_double(Main::Repositories::BookRepository) }

  describe "with valid params" do
    let(:params) { {book: {title: "Confident Ruby", author: "Avdi Grimm"}} }

    it "calls `create` on repository, redirects to books listing page" do
      allow(repository).to receive(:create).with(params[:book])

      response = action.call(params)

      expect(repository).to have_received(:create).with(params[:book])
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
