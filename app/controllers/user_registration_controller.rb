class UserRegistrationController < Devise::RegistrationsController
  protected

  def after_update_path_for(resource)
    user_show_path(resource.username)
  end
end
