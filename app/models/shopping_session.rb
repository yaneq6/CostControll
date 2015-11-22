class ShoppingSession < ActiveRecord::Base
  belongs_to :user
  has_many :market_products, through: :listings
  has_many :listings
  belongs_to :market
  validates :user_id, presence: true
  validates :name, presence: true, length: {maximum: 140  }
end
