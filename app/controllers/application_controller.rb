class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # skip_before_filter :verify_authenticity_token
  # helper_method :content_submit

  respond_to :json
  private

    def current_user
      User.find_by(openid: params[:openid])
    end


    def is_tourist
      render json: {} if current_user.nil? || current_user.manager.nil?
      # redirect_to new_session_path
    end
end
