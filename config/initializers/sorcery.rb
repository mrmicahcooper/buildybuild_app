# Rails.application.config.sorcery.submodules = [:user_activation]
# Rails.application.config.sorcery.submodules = [:user_activation]
# Rails.application.config.sorcery.submodules = [:user_activation]
Rails.application.config.sorcery.configure do |config|
  # -- core --
  # config.not_authenticated_action = :not_authenticated              # what controller action to call for
                                                                      # non-authenticated users.
                                                                      # You can also override 'not_authenticated'
                                                                      # instead.
                                                                                                               
  config.user_config do |user|
    user.username_attribute_name = :user_name                                       # change default username
    user.username_attribute_name = :email
    user.username_attribute_name = :email
    user.password_attribute_name = :password                                        # change *virtual* password
    user.email_attribute_name = :email                                              # change default email attribute.
    user.crypted_password_attribute_name =  :crypted_password                       # change default crypted_password
    user.salt_attribute_name = :salt                                                # change default salt attribute.
    user.encryption_algorithm = :bcrypt                                             # encryption algorithm name. See
    # user.activation_state_attribute_name = :activation_state                        # the attribute name to hold
    # user.activation_token_attribute_name = :activation_token                        # the attribute name to hold
  end
  # config.user_activation_mailer = #Create a mailer and put it here
    # user.activation_state_attribute_name = :activation_state                        # the attribute name to hold
    # user.activation_token_attribute_name = :activation_token                        # the attribute name to hold
  # end
  # config.user_activation_mailer = UserMailer
  # This line must come after the 'user config' block.
  config.user_class = "User"                                                          # define which model authenticates
                                                                                      # with sorcery.
end
