class Person < ActiveRecord::Base
  validates :name, :nianji, :city, :email, :leixing, :content, presence: true
end
