# frozen_string_literal: true

module Main
  module Actions
    module Books
      class Create < Main::Action
        # FIXME: Duplicated from books.new action
        params do
          required(:book).schema do
            required(:title).filled(:str?)
            required(:author).filled(:str?)
          end
        end

        def handle(request, response)
          if request.params.valid?
            response[:book] = Main::Repositories::BookRepository.new.create(
              request.params[:book]
            )

            response.redirect_to routes.path(:books)
          else
            response.status = 422
          end
        end
      end
    end
  end
end
