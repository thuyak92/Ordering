class Item < ActiveRecord::Base
  has_many :order
  has_one :category
end