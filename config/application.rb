# frozen_string_literal: true

begin
  require "break"
rescue LoadError => exception
  raise unless exception.path == "break"
end

require "hanami"

module Bookshelf
  class Application < Hanami::Application
    config.sessions = :cookie, {
      key: "bookshelf.session",
      secret: settings.session_secret,
      expire_after: 60 * 60 * 24 * 365 # 1 year
    }
  end
end
