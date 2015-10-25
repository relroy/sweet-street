class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

 
  def not_found
  raise ActionController::RoutingError.new('Not Found')
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:business, :first_name, :last_name, :address, :city, :phone, :state, :zip_code, :email, :password) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:address, :city, :phone, :state, :zip_code, :email, :password, :ws_cust) }
    end

  
end
