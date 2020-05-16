$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wizcms_article/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wizcms_article"
  s.version     = WizcmsArticle::VERSION
  s.authors     = ["Lester Zhao"]
  s.email       = ["Zm.Backer@gmail.com"]
  s.homepage    = "http://www.wityun.com"
  s.summary     = "WizcmsArticle is part of WizCMS which can be assembled as article managment."
  s.description = "WizcmsArticle is part of WizCMS which can be assembled as article managment. WizCMS is an another CMS which can assemble a CMS with many functions as needed."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_dependency 'kaminari'
  s.add_dependency 'simple_form'
  # s.add_dependency 'rails_kindeditor'


  s.add_development_dependency "sqlite3"
  # s.add_development_dependency 'rails-admin-scaffold' , git: 'https://github.com/zmbacker/rails-admin-scaffold.git'
  
end
