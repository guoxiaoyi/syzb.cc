class ActivitiesController < ApplicationController
  before_action :is_tourist, except: [:index, :show]
  def index
    current_user ||= User.new(manager_id: Manager.first.id)
    @activities = current_user.manager.activities.order(customize_order: :desc, created_at: :desc)
  end

  def show
    current_user ||= User.new(manager_id: Manager.first.id)
    @activity = current_user.manager.activities.find(params[:id])
    @status = @activity.activity_records.find_by(user_id: current_user).try(:status)
  end
end