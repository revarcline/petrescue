class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :appointments
  has_many :pets, through: :appointments
  before_create :default_admin

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    user ||= User.create(full_name: data['name'],
                         email: data['email'],
                         password: Devise.friendly_token[0, 20],
                         oauth: true)
    user
  end

  def default_admin
    self.admin ||= false
    self.oauth ||= false
  end
end
