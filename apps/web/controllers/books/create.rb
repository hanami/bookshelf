module Web::Controllers::Books
  class Create
    include Web::Action

    expose :book

    def call(params)
      @book = BookRepository.new.create(params[:book])

      redirect_to '/books'
    end
  end
end
