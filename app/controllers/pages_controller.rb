class PagesController < ApplicationController

  before_filter :require_login, :except => :show

  expose(:page)
  expose(:main_pages) { ParentPage.find(:all, order: :id) }
  expose(:published_main_pages) { ParentPage.published }
  expose(:sub_page_link_names) { current_page.sub_pages.published.select(:name) }
  expose(:published_sub_pages) { current_page.sub_pages.published }
  expose(:current_page) do
     (ParentPage.find_by_name(params[:page_name]) if params[:page_name]) or ParentPage.first
  end
  expose(:posts) { current_page.posts }
  expose(:published_posts) { posts.published }
  expose(:current_sub_page){ SubPage.find_by_name(params[:sub_page_name]) }
  expose(:website_title) { current_page.title.titleize if current_page }
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
    if page.has_no_children and page.destroy
      flash[:notice] = "#{page.name.titleize} has been deleted"
    else
      flash[:notice] = "You cannot delete a parent page before deleting all its children"
    end
      redirect_to control_panel_path,
  end

end
