class User < ActiveRecord::Base

  validates_presence_of :email, :password, :confirm_password, :on => :save

  authenticates_with_sorcery!
end
