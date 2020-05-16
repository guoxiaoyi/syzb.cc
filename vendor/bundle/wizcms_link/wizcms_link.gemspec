$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wizcms_link/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wizcms_link"
  s.version     = WizcmsLink::VERSION
  s.authors     = ["Lester Zhao"]
  s.email       = ["zm.backer@gmail.com"]
  s.homepage    = "http://www.wityun.com"
  s.summary     = "WizcmsLink is part of WizCMS which can be assembled as link managment."
  s.description = "WizCMS is an another CMS which can assemble a CMS with many functions as needed."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3"
end
