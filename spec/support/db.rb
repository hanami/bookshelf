# frozen_string_literal: true

# require_with_metadata: true

require_relative "db/database_cleaner"
require_relative "db/factory"

RSpec.configure do |config|
  config.before :suite do
    Hanami.application.start_bootable :persistence
  end
end
