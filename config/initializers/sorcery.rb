# Rails.application.config.sorcery.submodules = [:user_activation]
Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.username_attribute_name = :email
    user.password_attribute_name = :password                                        # change *virtual* password
    user.email_attribute_name = :email                                              # change default email attribute.
    user.crypted_password_attribute_name =  :crypted_password                       # change default crypted_password
    user.salt_attribute_name = :salt                                                # change default salt attribute.
    user.encryption_algorithm = :bcrypt                                             # encryption algorithm name. See
  end
  config.user_class = "User"                                                          # define which model authenticates
                                                                                      # with sorcery.
end
