class Account <ActiveRecord::Base

  has_one :user_avatar
  has_many :buckit


  include BCrypt

  #setting the password
  def password=(password)
    self.password = BCryt::Password.create(password)
  end

  #getting the password
  def password
    BCrypt::Password.new(self.password_digest)
  end

  #authentication

  def self.authenticate(user_name, password)
    current_user = Account.find_by(user_name: user_name)
    if (current_user.password == password)
      return current_user
    else
      return nil
    end

  end


end #end of account class
