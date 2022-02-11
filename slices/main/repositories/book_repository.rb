# frozen_string_literal: true

module Main
  module Repositories
    class BookRepository < Repository[:books]
      commands :create,
               use: :timestamps,
               plugins_options:
                 {timestamps: {timestamps: %i[created_at updated_at]}}
    end
  end
end
