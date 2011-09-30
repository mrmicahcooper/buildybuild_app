class SessionsController < ApplicationController
  expose(:users) { User.all }
  expose(:user)

  def create
    if login(params[:email], params[:password])
      redirect_to control_panel_path
    else
      redirect_to new_session_path, :alert => 'Invalid email and or password'
    end
  end
end
