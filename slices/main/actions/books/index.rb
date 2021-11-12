# frozen_string_literal: true

module Main
  module Actions
    module Books
      class Index < Main::Action
        def handle(request, response)
          response[:books] = Bookshelf::Repositories::BookRepository.new.books.to_a
        end
      end
    end
  end
end
