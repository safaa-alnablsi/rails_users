class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters
  before_action :set_user, only: [:show]

  protected

  def after_inactive_sign_up_path_for(resource)
    signed_up_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update).push(tag_ids: [])
    devise_parameter_sanitizer.for(:sign_up).push(tag_ids: [])
  end

end
