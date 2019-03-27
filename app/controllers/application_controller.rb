class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception


    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    protected

        def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :group_id)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :group_id)}

         end

    def hello
        render html: "Hello, World! This will soon be The Care Hub"
    end

end
