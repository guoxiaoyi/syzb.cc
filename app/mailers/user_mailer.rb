class UserMailer < ActionMailer::Base
  default from: "417174607@qq.com"

  def welcome_email(user)
    @user = user
    @text = case user.class.model_name
    when 'TaoCan'
      "#{user.created_at}预约#{user.taocan_type}"
    else
      "#{user.created_at}#{user.class.model_name.human}"
    end

    mail(to: WebSite.first.email, subject: "#{user.tel} #{user.class.model_name.human}")
  end
end
