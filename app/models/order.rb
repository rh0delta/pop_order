class Order < ActiveRecord::Base
  has_many :pop_elements

  scope :user_order, -> (user) {where(user_id: user.id)}
end
