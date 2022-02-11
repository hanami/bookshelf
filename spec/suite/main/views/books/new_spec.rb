# frozen_string_literal: true

require "spec_helper"
require "hanami/view"

RSpec.describe Main::Views::Books::New do
  let(:view)      { Main::Views::Books::New.new }
  let(:rendered)  { view.call(params: params).to_s }
  let(:params) do
    instance_double(
      Hanami::Action::Params,
      valid?: false,
      error_messages: ["Not an acceptable book"]
    )
  end

  # FIXME: This accesses `csrf_token`, but the context can't access the `request`
  # in this test. Need to inject the request somehow, or stub `csrf_token`
  skip "displays list of errors when params contains errors" do
    expect(rendered).to include("There was a problem with your submission")
    expect(rendered).to include("Not an acceptable book")
  end
end
