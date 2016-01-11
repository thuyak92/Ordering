class Category < ActiveRecord::Base

  MAIN_CATEGORY = 1

  has_many :item

  def self.categories
    return Category.where("id != ?", MAIN_CATEGORY)
  end

end