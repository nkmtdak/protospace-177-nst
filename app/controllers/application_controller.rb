class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
<<<<<<< Updated upstream
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :other_attribute])
=======
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
>>>>>>> Stashed changes
  end
end
