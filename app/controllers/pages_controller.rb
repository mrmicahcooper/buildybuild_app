class PagesController < ApplicationController

  before_filter :require_login, :except => :show

  expose(:page)
  expose(:main_pages) { ParentPage.all }
  expose(:published_main_pages) { ParentPage.published }
  expose(:sub_pages) { linked_page.sub_pages.published }
  expose(:published_sub_pages) { linked_page.sub_pages.published }
  expose(:linked_page) { ParentPage.find_by_name(params[:page]) || ParentPage.first }
  expose(:users) { User.all }
  expose(:user)

  def show
    redirect_to new_user_path unless users.any?
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
      render 'edit',
    end
  end

  def destroy
    page.destroy
    redirect_to control_panel_path, notice: "#{page.name.titleize} has been deleted"
  end

end
