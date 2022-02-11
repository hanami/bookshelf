# frozen_string_literal: true

module Main
  module Actions
    module Books
      class Index < Main::Action
        include Deps["repositories.book_repository"]

        def handle(request, response)
          response[:books] = book_repository.books.to_a
        end
      end
    end
  end
end
