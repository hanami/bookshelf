# frozen_string_literal: true

ENV["HANAMI_ENV"] ||= "test"

SPEC_ROOT = Pathname(__dir__).realpath.freeze
FIXTURES_PATH = SPEC_ROOT.join("fixtures").freeze

require_relative "support/rspec"
require "hanami/boot"
Hanami.init
