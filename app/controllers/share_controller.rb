class ShareController < ApplicationController
  before_action :is_tourist

  def index
    activity = Activity.find(params[:id])


    if current_user.points_records.where(brief: "分享<#{activity.title}>奖励").blank?
      current_user.points_records.new(
        points: 5,
        balance: current_user.balance+5,
        title: "分享#{activity.title}加5德分",
        brief: "分享<#{activity.title}>奖励"
      ).save
    end
    render json: {status: "ok"}
  end
end
