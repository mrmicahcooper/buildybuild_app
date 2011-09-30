class PagesController < ApplicationController
  expose(:page) { Page.find_by_name(params[:action]) }
  expose(:users) { User.all }
  expose(:user)

  def show
    redirect_to new_user_path if !users.any?
  end
end
