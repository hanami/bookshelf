# frozen_string_literal: true

module Main
  module Actions
    module Books
      class Index < Main::Action
        expose :books

        def call(_params)
          @books = BookRepository.new.all
        end
      end
    end
  end
end
