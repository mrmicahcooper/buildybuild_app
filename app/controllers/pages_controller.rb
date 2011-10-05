class PagesController < ApplicationController

  before_filter :require_login, :except => :show

  expose(:page)
  expose(:linked_page) { Page.find_by_name(params[:page]) || Page.first }
  expose(:linked_sub_page) { linked_page.find_sub_page(params[:sub_page]) }
  expose(:main_pages) { Page.parents }
  expose(:sub_pages) { Page.sub_pages(linked_page.id) }
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
