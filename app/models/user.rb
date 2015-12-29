#coding: utf-8
class User < ActiveRecord::Base

  ACCOUNT_TYPE_ADMIN = 1
  ACCOUNT_TYPE_USER  = 2
  devise :database_authenticatable
  has_many :order

  def admin?
    self.account_type == ACCOUNT_TYPE_ADMIN
  end

  def user?
    self.account_type == ACCOUNT_TYPE_USER
  end

end