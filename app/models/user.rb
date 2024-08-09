class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # emailとpasswordが空では保存できないバリデーションを設定
  validates :email, presence: true
  validates :password, presence: true
end
