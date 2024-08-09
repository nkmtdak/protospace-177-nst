class User < ApplicationRecord
<<<<<<< Updated upstream
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # emailとpasswordが空では保存できないバリデーションを設定
  validates :email, presence: true
  validates :password, presence: true
=======
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :prototypes
>>>>>>> Stashed changes
end
