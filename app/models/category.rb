class Category < ActiveRecord::Base

  MAIN_CATEGORY = 1

  has_many :item

  def self.categories_name
    arr = Category.where("id != ?", MAIN_CATEGORY).pluck(:name).to_a
    Rails.logger.debug("====================== #{arr}")
    return arr
  end

end