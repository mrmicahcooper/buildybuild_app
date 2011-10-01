class PagesController < ApplicationController
  expose(:linked_page) { Page.find_by_name(params[:page]) }
  expose(:all_pages) { Page.all }
  expose(:page)
  expose(:users) { User.all }
  expose(:user)

  def show
    if !users.any?
      redirect_to new_user_path
    end
  end

  def update
    if page.update_attributes(params[:page])
      redirect_to control_panel_path, :notice => "Page has been updated"
    else
      render 'edit'
    end
  end
end
