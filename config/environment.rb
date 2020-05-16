# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Time::DATE_FORMATS[:default] = "%Y/%m/%d %H:%M"
Time::DATE_FORMATS[:date] = "%Y-%m-%d"
Time::DATE_FORMATS[:wechat_time] = "%Y年%m月%d日 %H:%M"
Date::DATE_FORMATS[:month] = I18n.t('date.formats.month')
Date::DATE_FORMATS[:short] = "%m月%d日"
