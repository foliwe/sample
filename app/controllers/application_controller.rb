class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        added_attrs = [:full_name]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      end

      def after_sign_in_path_for(resource)
        dashboard_path
      end
end
