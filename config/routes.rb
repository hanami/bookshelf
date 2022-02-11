# frozen_string_literal: true

module Bookshelf
  class Routes < Hanami::Application::Routes
    define do
      slice :main, at: "/" do
        root to: "home.index"
        # FIXME: Change back once resourceful routing is implemented
        # resources :books, only: %i[index new create]
        get "books", to: "books.index", as: "books"
        get "books/new", to: "books.new"
        post "books", to: "books.create"
      end
    end
  end
end
