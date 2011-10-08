class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:website_name) { WebsiteSetting.find_by_name('website_name') }
  expose(:page_link_names) { ParentPage.published.select(:name) }
  expose(:website_title) { "BuildyBuild" }

end
