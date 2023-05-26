require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Farmaca
  class Application < Rails::Application
     # Initialize configuration defaults for originally generated Rails version.
     config.load_defaults 6.1
     # I18n config
     config.i18n.load_path += Dir[Rails.root.join('config/locales/**/*.{rb,yml}')]
     config.i18n.available_locales = [:'pt-BR', :en]
     config.i18n.default_locale = :'pt-BR'
     # Configure the default encoding used in templates for Ruby 1.9.
     config.encoding = "utf-8"
    
     config.generators.system_tests = nil
     config.active_record.use_yaml_unsafe_load = true
  end
end
