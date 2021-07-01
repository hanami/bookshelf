# auto_register: false
# frozen_string_literal: true

module Bookshelf
  module Entities
  end
end

Dir[File.join(__dir__, "entities", "*.rb")].sort.each(&method(:require))
