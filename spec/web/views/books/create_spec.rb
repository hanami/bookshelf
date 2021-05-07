# frozen_string_literal: true

require "spec_helper"
require_relative "../../../../apps/web/views/books/create"

describe Web::Views::Books::Create do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new("apps/web/templates/books/create.html.erb") }
  let(:view)      { Web::Views::Books::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #format" do
    expect(view.format).to eq exposures.fetch(:format)
  end
end
