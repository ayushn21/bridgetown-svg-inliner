# frozen_string_literal: true

require "bundler/gem_tasks"

task spec: :test
require "rake/testtask"

Rake::TestTask.new(:test) do |test|
  test.libs << "lib" << "test"
  test.pattern = "test/**/test_*.rb"
  test.verbose = true
  test.warning = false
end