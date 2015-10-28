class MarketProduct < ActiveRecord::Base
  has_and_belongs_to_many :shopping_sessions
  belongs_to :market
  belongs_to :product
  validates :price, presence: true
  validates :product_id, presence: true, uniqueness: true
  validates :market_id, presence: true


end
