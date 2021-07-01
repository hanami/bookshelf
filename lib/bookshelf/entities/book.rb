# frozen_string_literal: true

module Bookshelf
  module Entities
    class Book < ROM::Struct
      attribute :title, Types::String
      attribute :author, Types::String
      attribute :created_at, Types::Time.optional
      attribute :updated_at, Types::Time.optional
    end
  end
end
