# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
Dotenv::Railtie.load

module RtcServer
  class Application < Rails::Application
    require Rails.root.join('config', 'service_settings')

    config.generators.template_engine = :slim
  end
end
