class Users < ApplicationController
  expose(:users) { User.all }
  expose(:user)


  def create
    if user.save
      flash[:notice] = "Account has been created. Please confirm your email to continue"
      redirect_to sign_in_path
    else
      render 'new'
    end
  end
end
