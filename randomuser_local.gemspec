$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
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

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
end
