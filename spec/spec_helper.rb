# frozen_string_literal: true

require "byebug"

ENV["HANAMI_ENV"] ||= "test"

SPEC_ROOT = Pathname(__dir__).realpath.freeze
FIXTURES_PATH = SPEC_ROOT.join("fixtures").freeze

require "hanami/boot"

require_relative "support/rspec"
require_relative "support/db"
require_relative "support/capybara"

Hanami.init
