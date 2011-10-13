class PostsController < ApplicationController
  expose(:page) { Page.find(params[:page_id] || params[:post][:page_id]) }
  expose(:posts) { page.posts }
  expose(:post)


  def create
    if post.save(params[:post])
      redirect_to control_panel_path, notice: 'New post created'
    else
      render 'new'
    end
  end
end
