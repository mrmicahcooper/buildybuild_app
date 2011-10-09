class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:website_name) { WebsiteSetting.find_by_name('website_name').try(:value) or "BuildyBuild" }
  expose(:page_link_names) { ParentPage.published.select(:name) }
  expose(:website_title) { "BuildyBuild" }
  expose(:current_sub_page) { nil }

end
