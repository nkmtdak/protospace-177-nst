class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :user_name,       presence: true
  validates :user_profile,    presence: true
  validates :user_occupation, presence: true
  validates :user_position,   presence: true
  validates :nickname,   presence: true


end
