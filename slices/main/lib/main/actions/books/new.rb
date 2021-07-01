# frozen_string_literal: true

module Main
  module Actions
    module Books
      class New < Main::Action
        params do
          required(:book).schema do
            required(:title).filled(:str?)
            required(:author).filled(:str?)
          end
        end
      end
    end
  end
end
