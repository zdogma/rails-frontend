# frozen_string_literal: true

module ApplicationHelper
  def javascript_include_tag_if_exists(asset, *options)
    javascript_include_tag(asset, *options) if ::Rails.application.assets.find_asset(asset) # rubocop:disable Metrics/LineLength
  end
end
