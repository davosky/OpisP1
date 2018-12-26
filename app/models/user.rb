class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :recoverable, :rememberable, :validatable, :registerable
  devise :database_authenticatable

  has_many :inca_receipts
  has_many :inca_subscriptions
  has_many :uvl_receipts
  has_many :uvl_subscriptions

  validates :name, presence: true
  validates :institute, presence: true
end
