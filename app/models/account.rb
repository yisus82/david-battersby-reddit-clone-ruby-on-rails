class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :communities
  has_many :posts
  validates_presence_of :username, :first_name, :last_name
  validates_uniqueness_of :username

  def full_name
    "#{first_name} #{last_name}"
  end
end
