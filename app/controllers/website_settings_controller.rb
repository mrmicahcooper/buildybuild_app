class WebsiteSettingsController < ApplicationController

  expose(:website_settings)
  expose(:setting)

  def edit

  end

  def update_settings
    if WebsiteSetting.update_settings(params[:website_settings])
      redirect_to control_panel_path , :notice => "Website name updated"
    else
      render 'edit'
    end
  end

end
