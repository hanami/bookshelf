# frozen_string_literal: true

require "rom-repository"

module Bookshelf
  class Repository < ROM::Repository::Root
    include Deps[container: "persistence.rom"]

    struct_namespace Entities
  end
end
