class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :authenticate_user!

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:display_name, :name, :phone, :city, :country, :username, :avatar, :about])
		devise_parameter_sanitizer.permit(:account_update, keys: [:display_name, :name, :phone, :city, :country, :username, :avatar, :about])
	end
end
