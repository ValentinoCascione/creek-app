class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    #----
    #Code added to add a filed "pseudo" in the User table
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
      devise_parameter_sanitizer.permit(:sign_up, keys: [:pseudo])
  
      # For additional in app/views/devise/registrations/edit.html.erb
      devise_parameter_sanitizer.permit(:account_update, keys: [:pseudo])
    end
    # -----
end
