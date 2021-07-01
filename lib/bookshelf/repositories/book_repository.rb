# frozen_string_literal: true

module Bookshelf
  module Repositories
    class BookRepository < Bookshelf::Repository[:books]
      commands :create,
               use: :timestamps,
               plugins_options:
                 {timestamps: {timestamps: %i[created_at updated_at]}}

      auto_struct true
    end
  end
end
