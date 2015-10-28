class Product < ActiveRecord::Base
  belongs_to :category
  has_many :market_products

  validates :name, presence: true
  validates :barcode, presence: true
  validates_uniqueness_of :barcode
  validates_presence_of :category_id


end
