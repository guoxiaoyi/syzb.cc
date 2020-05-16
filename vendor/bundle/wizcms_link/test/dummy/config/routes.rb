Rails.application.routes.draw do

  mount WizcmsLink::Engine => "/"

  get "admin_login" => "application#portal"

end
