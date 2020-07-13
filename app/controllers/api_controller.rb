class ApiController < ApplicationController
  def get_switch
    response = HTTParty.get("http://www.yhjzb9999.com/get_switch.php")
    res = JSON.parse response
    render json: res
  end

  def get_price1
    response = HTTParty.get("http://www.yhjzb9999.com/get_price1.php")
    res = JSON.parse response
    render json: res
  end
end
