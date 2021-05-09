# frozen_string_literal: true

require "bookshelf/types"

Hanami.application.settings do
  # Framework
  setting :log_to_stdout, Bookshelf::Types::Params::Bool.optional.default(false)

  # Database
  setting :database_url, Bookshelf::Types::String

  # Application
  setting :session_secret, Bookshelf::Types::String

  # Assets
  setting :precompiled_assets, Bookshelf::Types::Params::Bool.optional.default(false)
  setting :assets_server_url, Bookshelf::Types::String.optional.default("http://localhost:8080")
end
