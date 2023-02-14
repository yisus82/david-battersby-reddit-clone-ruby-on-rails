class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :communities
  has_many :posts

  def full_name
    if first_name.blank?
      "#{last_name}"
    elsif last_name.blank?
      "#{first_name}"
    else
      "#{first_name} #{last_name}"
    end
  end
end
