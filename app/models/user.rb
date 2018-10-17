class User < ApplicationRecord
  validates_presence_of :name, :email, :password

  def self.authenticate(email, password)
    if email == session[:email] && password == session[:password]
      return @user
    else
      return nil
    end
  end

end
