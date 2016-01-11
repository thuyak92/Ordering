class Item < ActiveRecord::Base
  has_many :order
  belongs_to :category

  validates :name, :category, :price, :presence => true
  validates :price, :numericality => true
  validate :validate_image

  def has_image?
  	return self.has_image == 1
  end

  def validate_image
  	self.has_image = 1 unless self.image_url.blank?
  end

end