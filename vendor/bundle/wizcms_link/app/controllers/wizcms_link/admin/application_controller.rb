require_dependency "wizcms_link/application_controller"

module WizcmsLink
  class Admin::ApplicationController < ApplicationController
    layout 'admin'
    before_action :auth_redirect
    helper_method :has_auth
    private
      def auth_redirect
        redirect_to main_app.admin_login_path unless current_manager
      end

      def current_manager
        # this method is tobe rewrite by the main application
      end
  end
end
