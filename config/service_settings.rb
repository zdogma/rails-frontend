# frozen_string_literal: true

class ServiceSettings < Settingslogic
  source Rails.root.join('config', 'service_settings.yml')
  namespace Rails.env
end
