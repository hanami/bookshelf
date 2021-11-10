# frozen_string_literal: true

module Main
  module Views
    module Books
      class New < View::Base
        expose :params
        expose :book
      end
    end
  end
end
