require File.expand_path(File.dirname(__FILE__) + '/lib/rails_clientside_javascript_error_handler/version.rb')
require 'bundler/gem_tasks'

task :test do 
  require 'rake/testtask'

  Rake::TestTask.new(:test) do |t|
    t.libs << 'lib'
    t.libs << 'test'
    t.pattern = 'test/**/*_test.rb'
    t.verbose = false
  end
end

task default: :test

task :console do
  require 'rails_clientside_javascript_error_handler'

  require 'irb'
  binding.irb
end
