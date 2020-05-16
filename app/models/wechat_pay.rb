module WechatPay
  class CreateOrder
    def initialize(params = {})
      # 对参数按照key=value的格式，并按照参数名ASCII字典序排序 拼接API密钥
      string = params.sort.map{|k,v| "#{k}=#{v}" }.join("&") + "&key=lx20160422lx20180823lx20160422lx"
      # 对string进行MD5签名 并转成大写
      string = Digest::MD5.hexdigest(string).upcase
      #请求参数转成xml
      xml_string = params.map {|k, v| "<#{k}>#{v}</#{k}>" }.join("")
      @xml_string = "<xml>#{xml_string}<sign>#{string}</sign></xml>"      
    
    end

    def unifiedorder
      response = HTTParty.post("https://api.mch.weixin.qq.com/pay/unifiedorder",{body: @xml_string})
      Hash.from_xml(response)
    end
  end
end