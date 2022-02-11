# frozen_string_literal: true

module RSpec
  module FeatureExampleGroup
    def self.included(group)
      group.metadata[:type] = :feature
      Capybara.app = Rack::Builder.parse_file(
        SPEC_ROOT.join("../config.ru").realpath.to_s
      ).first
    end
  end
end
