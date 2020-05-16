class ManagersController < ActionController::Base
  def index
    @managers = Manager.all
  end
end
