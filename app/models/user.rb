class User < ActiveRecord::Base

  attr_accessor :password_confirmation
  validates_presence_of :email, :password, :password_confirmation
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_uniqueness_of :email
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password, :on => :create

  authenticates_with_sorcery!
end
