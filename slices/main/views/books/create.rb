# frozen_string_literal: true

module Main
  module Views
    module Books
      class Create < View::Base
        # TODO: It might be worth seeing if this could inherit from Books::New
        config.template = "books/new"
      end
    end
  end
end
