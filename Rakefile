require 'rake'
require 'rake/testtask'

task :default => [:test]

desc "Run tests"
Rake::TestTask.new("test") do |t|
  t.pattern = '*_test.rb'
  t.verbose = true
  t.warning = true
end