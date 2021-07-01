# frozen_string_literal: true

require "spec_helper"

describe Main::Actions::Books::Index do
  let(:action) { Main::Actions::Books::Index.new }
  let(:params) { {} }

  it "is successful" do
    response = action.call(params)
    expect(response.status).to eq(200)
  end
end
