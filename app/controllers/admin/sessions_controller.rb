class Admin::SessionsController < AdminsController
  skip_before_filter :ensure_authorized
  ADMIN_EMAILS = ['peihongli94@gmail.com'].freeze

  def new
    redirect_to '/admin/auth/google_oauth2'
  end

  def create
    auth = request.env['omniauth.auth']
    if auth && auth['info']['email'].in?(ADMIN_EMAILS)
      set_admin_session(auth['info'])
      redirect_to session.delete(:return_to) || admin_dashboard_home_path
    else
      redirect_to root_path
    end
  end

  def destroy
    expire_admin_session
    redirect_to root_path
  end
end
