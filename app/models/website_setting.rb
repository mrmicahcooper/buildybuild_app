class WebsiteSetting < ActiveRecord::Base

  def self.update_settings(settings)
      set = find_or_create_by_name(settings["name"])
      set.update_attribute(:value ,settings["value"])
  end

end
