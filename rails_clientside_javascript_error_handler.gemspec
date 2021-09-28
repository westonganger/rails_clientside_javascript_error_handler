lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_clientside_javascript_error_handler/version.rb'

Gem::Specification.new do |s|
  s.name = 'rails_clientside_javascript_error_handler'
  s.version =  RailsClientsideJavascriptErrorHandler::VERSION
  s.author = "Weston Ganger"
  s.email = 'weston@westonganger.com'
  s.homepage = 'https://github.com/westonganger/rails_clientside_javascript_error_handler'
  
  s.summary = "Easily handle error notifications for client-side Javascript errors and exceptions within your Rails apps"
  s.description = s.summary 
  s.license = 'MIT'

  s.files = Dir.glob("{lib/**/*}") + %w{ LICENSE README.md Rakefile CHANGELOG.md }
  s.test_files = Dir.glob("{test/**/*}")
  s.require_path = 'lib'

  s.required_ruby_version = '>= 1.9'

  s.add_runtime_dependency 'railties', '>= 3.2'
  
  s.add_development_dependency 'rails', '>= 3.2'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-reporters'
  s.add_development_dependency 'sqlite3'

  if RUBY_VERSION.to_f >= 2.4
    s.add_development_dependency 'warning'
  end
end
