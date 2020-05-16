class PointsRecordsController < ApplicationController
  before_action :is_tourist
  def index
    @points_records = current_user.points_records.order(updated_at: :desc)
  end
end