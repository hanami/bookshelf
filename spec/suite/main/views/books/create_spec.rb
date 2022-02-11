# frozen_string_literal: true

require "spec_helper"
require "hanami/view"

RSpec.describe Main::Views::Books::Create do
  let(:view)      { Main::Views::Books::Create.new }
  let(:rendered)  { view.call(params: params).to_s }
  let(:params) { instance_double(Hanami::Action::Params, valid?: true) }

  # FIXME: This accesses `csrf_token`, but the context can't access the `request`
  # in this test. Need to inject the request somehow, or stub `csrf_token`
  skip "displays the form title" do
    expect(rendered).to include("Add book")
  end
end
