class PagesController < ApplicationController

  before_filter :require_login, :except => :show

  expose(:linked_page) { Page.find_by_name(params[:page]) || Page.first }
  expose(:all_pages) { Page.all }
  expose(:page)
  expose(:users) { User.all }
  expose(:user)

  def show
    if !users.any?
      redirect_to new_user_path
    end
  end

  def create
    if page.save(params[:page])
      redirect_to control_panel_path, :notice => "Page has been created"
    else
      render 'new'
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
