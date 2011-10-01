class PagesController < ApplicationController
  expose(:page) { Page.find_by_name(params[:page]) }
  expose(:users) { User.all }
  expose(:user)

  def show
    if !users.any?
      redirect_to new_user_path
    end
  end
end
