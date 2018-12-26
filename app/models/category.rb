class Category < ActiveRecord::Base
    has_many :uvl_receipts
    has_many :inca_subscriptions
    has_many :uvl_subscriptions
    has_many :tariffs
    validates :name, presence: true
    validates :position, presence: true
end
