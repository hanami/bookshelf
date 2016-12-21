# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
post '/books', to: 'books#create'
get '/books/new', to: 'books#new'
get '/books', to: 'books#index'
root to: 'home#index'
