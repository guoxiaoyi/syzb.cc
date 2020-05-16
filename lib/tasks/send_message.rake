namespace :send_message do
  desc 'send miniprogram message '
  task :send => :environment do
    # 会员即将到期
    User.all.each do |user|
      if user.left_days == 5
        res = user.send_message_expired
        Rails.logger.info res
      end
      if user.left_days < 0
        user.update(levels: Vip.first.id, expired_at: nil)
      end
    end
  end
end