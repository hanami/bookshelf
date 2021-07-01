# frozen_string_literal: true

module Main
  module Views
    module Books
      class Index < View::Base
        expose :books
      end
    end
  end
end
