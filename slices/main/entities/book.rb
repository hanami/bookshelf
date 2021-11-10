# frozen_string_literal: true

module Main
  module Entities
    class Book < ROM::Struct
      attribute :title, Bookshelf::Types::String
      attribute :author, Bookshelf::Types::String
      attribute :created_at, Bookshelf::Types::Time.optional
      attribute :updated_at, Bookshelf::Types::Time.optional
    end
  end
end
