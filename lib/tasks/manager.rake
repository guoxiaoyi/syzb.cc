namespace :admin do
  desc 'init default manager'
  task :init_manager => :environment do
    @manager = Manager.new( name: '天津分会', email: 'admin@admin.com', password: 'admin888', password_confirmation: 'admin888', supper: true, disabled: true)
    @manager.save
    print "admin has been created. please login with:\n"
    print "email: admin@admin.com\npassword: admin888\n"
    print "When login the admin pannel.\nPlease create another mananger.\nAnd then delete the manager which generated with the script.\n"
    
  end

  desc "Reset default manager"
  task :reset_manager => :environment do
    @manager = Manager.where(name: '天津分会', email: 'admin@admin.com').first
    @manager.update(supper: true, disabled: true)
    print " manager admin has been reset!"
  end

end