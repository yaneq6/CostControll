class MarketProduct < ActiveRecord::Base
  has_many :shopping_sessions, through: :listings
  belongs_to :market
  belongs_to :product
  accepts_nested_attributes_for :product
  has_many :listings

  validates :price, presence: true
  validates :product_id, presence: true
  validates :market_id, presence: true



end
