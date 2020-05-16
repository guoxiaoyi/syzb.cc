class ActivityRecordsController < ApplicationController
  before_action :is_tourist
  def index
    @activity_records = current_user.activity_records
  end
  def show
    @activity = Activity.find(params[:id])
    @joined = @activity.activity_records.find_by(user_id: current_user.id)
  end
  
  def update
    @activity = Activity.find(params[:id])
    @activity_record = @activity.activity_records.find_by(user_id: current_user.id)
    @activity_record.update(status: 2)
    # redirect_to activity_record_path(@activity_record.activity, openid: current_user.openid)
    render json: @activity_record
  end

  def create
    @activity = Activity.find(params[:id])
    @activity_record = @activity.activity_records.new(user_id: current_user.id)
    Rails.logger.info @activity_record
    @activity_record.status = 1
    if @activity_record.save
      render json: @activity_record
    else
      render json: @activity_record.error
    end
  end
end
