WizcmsLink::Admin::ApplicationController.class_eval do

  def current_manager
    @current_manager = true
  end

  def auth_redirect
    redirect_to main_app.admin_login_path unless current_manager
  end


end