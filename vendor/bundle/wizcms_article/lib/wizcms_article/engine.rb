module WizcmsArticle
  class Engine < ::Rails::Engine
    isolate_namespace WizcmsArticle

    paths["config/initializers"] # => ["config/initializers"]
    # paths["config/locales"]      # => ["config/locales"]

    config.to_prepare do
      Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end
    end
  end
end
