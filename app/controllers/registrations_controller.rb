class RegistrationsController < Devise::RegistrationsController
 
  private
 
    # Modified Devise params for user login
    def sign_up_params
      
      params.require(:user).permit(:id, :username, :email, :password, :password_confirmation)
    end
 
    def after_sign_up_path_for(resource)
      "/"
    end
 
    def after_inactive_sign_up_path_for(resource)
      "/"
    end

end