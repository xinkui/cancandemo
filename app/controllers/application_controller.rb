class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :cancan_rails4_support

  #rescue_from CanCan::AccessDenied do |exception|
  #  redirect_to help_cancan_errors_path
  #end

  # 使cancan插件支持rails4
  def cancan_rails4_support
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

end
