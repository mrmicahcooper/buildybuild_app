class WebsiteSettingsController < ApplicationController

  before_filter :require_login, :only => [:edit, :update]

  expose(:website_settings)
  expose(:setting)

  def update
    if WebsiteSetting.update_settings(params[:website_settings])
      redirect_to control_panel_path , :notice => "Website name updated"
    else
      render 'edit'
    end
  end

end
