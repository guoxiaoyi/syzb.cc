desc 'build article_categories'
task :build => :environment do
  Rake::Task["db:drop"].invoke
  Rake::Task["db:create"].invoke
  Rake::Task["db:migrate"].invoke
  Rake::Task["db:seed_fu"].invoke
  Rake::Task["admin:init_manager"].invoke
end
