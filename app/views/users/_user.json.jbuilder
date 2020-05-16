json.extract! user, :id, :name, :phone, :province, :city, :balance, :district, :manager_id, :birthday, :levels, :to_percent, :left_days, :avatar, :expired_at, :next_levels, :current_levels, :number
json.manager user.manager.name
json.parent_phone User.find_by(phone: user.parent_phone).try(:name)
# json.url user_url(user, format: :json)
