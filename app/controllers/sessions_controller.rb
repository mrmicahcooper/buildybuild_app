class SessionsController < ApplicationController
  expose(:users) { User.all }
  expose(:user)

  def create
    if login(params[:email], params[:password])
      redirect_to control_panel_path
    else
      render 'new', alert: 'Invalid login.'
    end
  end
end
