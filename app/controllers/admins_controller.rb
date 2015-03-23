class AdminsController < ApplicationController
  before_filter :ensure_authorized

  def set_admin_session(details)
    session[:admin_auth] = details
  end

  def ensure_authorized
    return if session[:admin_auth]

    session[:return_to] = request.fullpath
    redirect_to new_admin_session_path
  end

  def expire_admin_session
    session[:admin_auth] = nil
  end

end
