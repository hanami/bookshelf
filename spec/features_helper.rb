# frozen_string_literal: true

require_relative "./spec_helper"

require "capybara"
require "capybara/dsl"
require "capybara/rspec"

RSpec.configure do |config|
  config.include RSpec::FeatureExampleGroup

  config.include Capybara::DSL, feature: true
  config.include Capybara::RSpecMatchers, feature: true
end
