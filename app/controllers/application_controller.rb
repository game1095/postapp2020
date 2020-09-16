class ApplicationController < ActionController::Base
  # After Sign in
  def after_sign_in_path_for(resource_or_scope)
    session[:user] = home_path
  end
end
