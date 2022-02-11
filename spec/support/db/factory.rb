# frozen_string_literal: true

require "rom-factory"

Factory = ROM::Factory.configure { |config|
  config.rom = Hanami.application["persistence.rom"]
}

Dir[Pathname(__FILE__).dirname.join("../factories/**/*.rb")].sort.each(&method(:require))
