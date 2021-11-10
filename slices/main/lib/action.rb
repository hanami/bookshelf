# frozen_string_literal: true

require "bookshelf/action"

module Main
  class Action < Bookshelf::Action
    # FIXME: Use Router's url_helpers
    def routes
      # Hanami.app.url_helpers # With hanami/hanami#1106 merged
      Hanami.app.instance_variable_get(:@app).app.instance_variable_get(:@app).url_helpers
    end
  end
end
