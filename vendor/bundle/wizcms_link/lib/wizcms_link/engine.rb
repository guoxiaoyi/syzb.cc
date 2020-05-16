module WizcmsLink
  class Engine < ::Rails::Engine
    isolate_namespace WizcmsLink
    config.to_prepare do
      Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end
    end
    config.app_generators do |g|
      g.templates.unshift File::expand_path('../../templates', __FILE__)
    end

    # ActiveSupport.on_load :action_controller do
    #   helper WizcmsLink::ApplicationHelper
    # end

    initializer 'wizcms_link.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper WizcmsLink::ApplicationHelper
      end
    end

    # i18n load
    config.i18n.load_path += Dir[File.join(File::expand_path('../../', __FILE__),"locals",'**', '*.{rb,yml}')]


  end
end
