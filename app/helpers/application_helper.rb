module ApplicationHelper
  def asset_exist?(path)
    
    # If line 32 in production.rb is true (config.assets.compile = true)
    if Rails.configuration.assets.compile
      # Attaches alphanumeric string to it and then finds it in assets folder.
      Rails.application.precompiled_assets.include? path
    else
      # Assets should be in assets/images and not alphanumeric string.
      Rails.application.assets_manifest.assets[path].present?
    end
  end  
  
  def gravatar_for(chef, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(chef.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    if( action_name == "index")
      image_tag(gravatar_url, class: "gravatar")
    else
      image_tag(gravatar_url, class: "show-page-gravatar") 
    end
  end
end