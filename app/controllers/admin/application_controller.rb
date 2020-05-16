class Admin::ApplicationController < ActionController::Base

  layout 'admin'


  before_filter :auth_redirect, except: [ :login, :create_session, :destroy_session, :callback]
  # before_filter :has_auth, except: [ :login, :create_session, :destroy_session]
  helper_method :current_manager, :has_auth



  def login
    @manager = Manager.new
    if current_manager
      redirect_to admin_path
    else
      render layout: 'empty'
    end
  end

  def create_session
    @manager = Manager.find_by_auth_key( params[:auth_key] )
    if @manager && @manager.authenticate( params[:password] )
      session[:manager_id] = @manager.id
      @current_manager = @manager
      redirect_to admin_path
    else
      redirect_to action: "login"
    end
  end

  def destroy_session
    session[:manager_id] = nil
    redirect_to action: "login"
  end


  def portal

  end


  private

  def current_manager
    @current_manager ||= Manager.where(id: session[:manager_id]).first if session[:manager_id]
  end

  def auth_redirect
    redirect_to admin_login_path unless current_manager
  end

  def has_auth
    begin
      current_manager.supper || current_manager.authority.split(',').include?(controller_name)
    rescue
      return false
    end
  end


end
