  require_relative 'boot'

  require 'rails/all'

  require './lib/coin_market_cap/extracter'
  require './lib/coin_market_cap/converter'

  # Require the gems listed in Gemfile, including any gems
  # you've limited to :test, :development, or :production.
  Bundler.require(*Rails.groups)

  module CurrencyConverter
    class Application < Rails::Application
      # Settings in config/environments/* take precedence over those specified here.
      # Application configuration should go into files in config/initializers
      # -- all .rb files in that directory are automatically loaded.
      config.i18n.available_locales = [:en, :'pt-BR']
      config.i18n.default_locale = :'pt-BR'
    end
  end
