require File.expand_path('../boot', __FILE__)
ENV['RANSACK_FORM_BUILDER'] = '::SimpleForm::FormBuilder'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Obor100
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Beijing'
    config.active_record.default_timezone = :local
    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.default_locale = 'zh-cn'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.enforce_available_locales = false

    config.middleware.delete 'Rack::Cache'   # 整页缓存，用不上
    # config.middleware.delete 'Rack::Lock'    # 多线程加锁，多进程模式下无意义
    # config.middleware.delete 'Rack::Runtime' # 记录X-Runtime（方便客户端查看执行时间）
    config.middleware.delete 'ActionDispatch::RequestId' # 记录X-Request-Id（方便查看请求在群集中的哪台执行）
    config.middleware.delete 'ActionDispatch::RemoteIp'  # IP SpoofAttack
    # config.middleware.delete 'ActionDispatch::Callbacks' # 在请求前后设置callback
    config.middleware.delete 'ActionDispatch::Head'      # 如果是HEAD请求，按照GET请求执行，但是不返回body
    config.middleware.delete 'Rack::ConditionalGet'      # HTTP客户端缓存才会使用
    config.middleware.delete 'Rack::ETag'    # HTTP客户端缓存才会使用
    # config.rubycas.cas_base_url = 'https://cas.example.com/'

  end
end
