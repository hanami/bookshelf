# frozen_string_literal: true

require "spec_helper"
require_relative "../../../../apps/web/controllers/books/new"

describe Web::Controllers::Books::New do
  let(:action) { Web::Controllers::Books::New.new }
  let(:params) { {} }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq(200)
  end
end
