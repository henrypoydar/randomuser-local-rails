# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "randomuser_local/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "randomuser-local-rails"
  s.version     = RandomuserLocal::VERSION
  s.authors     = ["Henry Poydar"]
  s.email       = ["hpoydar@gmail.com"]
  s.homepage    = "https://github.com/hpoydar/randomuser-local-rails"
  s.summary     = "Provides most of the functionality of http://api.randomuser.me without an external API call for Rails applications"
  s.license     = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency "rails", ">= 4.1"

  s.add_development_dependency "sqlite3"

end
