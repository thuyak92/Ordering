class Item < ActiveRecord::Base
  has_many :order
  belongs_to :category

  validates :name, :category, :price, :presence => true

end