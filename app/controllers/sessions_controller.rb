class SessionsController < ActionController::Base
  def new
    render json: {a: 'b'}
  end
  def create
    user = User.find_or_initialize_by(openid: code2Session["openid"])
    render json: {openid: user.openid, levels: user.levels}
  end
  private
  def code2Session
    response = HTTParty.get("https://api.weixin.qq.com/sns/jscode2session?appid=wx3d44729118c26f7b&secret=394aa0fc60fcf6d8c2986cb22255457e&js_code=#{params[:code]}&grant_type=authorization_code")
    JSON.parse response
  end
end