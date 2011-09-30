class UsersController < ApplicationController
  expose(:users) { User.all }
  expose(:user)


  def create
    if user.save
      redirect_to new_session_path, :notice => "Account has been created. Now sign in!"
    else
      render 'new'
    end
  end
end
