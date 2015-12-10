class Buckit < ActiveRecord::Base
  has_many :accounts
  has_many :user_avatars
end
