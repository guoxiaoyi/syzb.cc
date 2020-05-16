class UsersController < ApplicationController
  before_action :is_tourist, only: %i[show]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
    Rails.logger.info "1231232"
  end

  def edit
  end

  def create
    @user = User.new(user_params)
     respond_to do |format|
       if @user.save
         format.json { render json: @user, status: :created, location: @user }
       else
         format.json { render json: @user.errors, status: :unprocessable_entity }
       end
     end
  end

  def update_info
    @user = User.find(params[:id])
    @user.update(update_info_params)
    render :show
  end

  def update
    vip = Vip.find_by(id: params[:vip_id])

    balance = @user.balance - vip.price
    if balance >= 0
      if vip.id.to_s == @user.levels
        @user.points_records.new(points: "-#{vip.price}", balance: balance, title: "续费#{vip.name}", brief: "续费#{vip.name}花费#{vip.price}德分").save
        expired_at = @user.expired_at || Time.now
        @user.update(levels: vip.levels, expired_at: expired_at+1.years)
      else
        @user.points_records.new(points: "-#{vip.price}", balance: balance, title: "购买#{vip.name}", brief: "购买#{vip.name}花费#{vip.price}德分").save
        @user.update(levels: vip.levels, expired_at: Time.now+1.years)
      end

      @user.send_message_vip

      render json: {status: true}
    else
      render json: {status: false}
    end
  end

  def destroy
    @user.destroy
    respond_with(@user)
  end

  private
    def set_user
      @user = User.find_by(openid: params[:id])
    end
    def update_info_params
      params.require(:user).permit(:name, :birthday, :province, :city, :district, :manager_id)
    end
    def user_params
      params.require(:user).permit(:phone, :name, :openid, :birthday, :province, :parent_phone, :city, :district, :manager_id, :avatar, :vip_id)
    end
end
