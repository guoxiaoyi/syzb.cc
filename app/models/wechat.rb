module Wechat
  def self.get_access_token
    Rails.cache.fetch("../access_token", expires_in: 2.hours) do
      response = HTTParty.get('https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx3d44729118c26f7b&secret=394aa0fc60fcf6d8c2986cb22255457e')
      response["access_token"]
    end
  end

end