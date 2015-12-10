class Buckit < ActiveRecord::Base
  has_many :account
  has_many :user_image
end
