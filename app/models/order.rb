class Order < ActiveRecord::Base
  belongs_to :user
  has_many :item

  def items
    
  end

end