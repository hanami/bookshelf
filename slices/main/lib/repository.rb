# frozen_string_literal: true

module Main
  class Repository < Bookshelf::Repository
    auto_struct true

    struct_namespace Entities
  end
end
