class PostsController < ApplicationController
  before_filter :require_login

  expose(:page) { Page.find(params[:page_id] || params[:post][:page_id]) }
  expose(:posts) { page.posts }
  expose(:published_posts) { posts.published }
  expose(:post)
  expose(:post_parent) { post.page }


  def create
    if post.save(params[:post])
      redirect_to control_panel_path, notice: 'New post created'
    else
      render 'new'
    end
  end

  def update
    if post.update_attributes(params[:post])
      redirect_to control_panel_path, notice: 'Post updated'
    else
      render 'edit'
    end
  end
end
