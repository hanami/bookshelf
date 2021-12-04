# frozen_string_literal: true

module Main
  module Actions
    module Books
      class Index < Main::Action
        def handle(request, response)
          response[:books] = Main::Repositories::BookRepository.new.books.to_a
        end
      end
    end
  end
end
