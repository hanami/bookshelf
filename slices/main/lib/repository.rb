# frozen_string_literal: true

module Main
  class Repository < Bookshelf::Repository
    commands :create,
             use: :timestamps,
             plugins_options:
               {timestamps: {timestamps: %i[created_at updated_at]}}

    auto_struct true
  end
end
