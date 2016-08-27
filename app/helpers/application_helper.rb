module ApplicationHelper
  def javascript_include_tag_if_exists(asset, *options)
    if ::Rails.application.assets.find_asset(asset)
      javascript_include_tag(asset, *options)
    end
  end
end
