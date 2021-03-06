class ApplicationController < ActionController::Base
    before_action :authenticate_employee!
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception

    def after_sign_in_path_for(resource)
        "/mainMenu"
    end

    protected 
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :firstName, :lastName)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
    end
end
