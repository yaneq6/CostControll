class ShoppingSession < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :market_products
  belongs_to :market
  validates :user_id, presence: true
  validates :name, presence: true, length: {maximum: 140  }
end
