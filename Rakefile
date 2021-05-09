# frozen_string_literal: true

require "rake"
require "rake/testtask"

task :environment do
  require "hanami/init"
end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)
task default: :spec