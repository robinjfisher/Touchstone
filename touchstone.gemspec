$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "touchstone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "Touchstone"
  s.version     = Touchstone::VERSION
  s.platfor     = Gem::Platform::RUBY
  s.authors     = ["Roin Fisher"]
  s.email       = ["robinjfisher@gmail.com"]
  s.homepage    = "https://github.com/robinjfisher/Touchstone"
  s.summary     = "A Rails Engine that provides metrics for your web app"
  s.description = "TODO: Description of Touchstone."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
end
