# frozen_string_literal: true

require "rake"
require "rake/testtask"
require "rom/sql/rake_task"

task :environment do
  require "hanami/init"
end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)
task default: :spec

namespace :db do
  task :setup do
    require "hanami/init" # TODO: Figure out how to do this w/o booting entire application
    ROM::SQL::RakeSupport.env = Hanami.application.container["persistence.rom"]
  end
end
