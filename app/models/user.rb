class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def generate_auth_token
    loop do
      self.auth_token = SecureRandom.urlsafe_base64
      break unless self.class.exists?(auth_token: auth_token)
    end
    self.save
  end 

end
