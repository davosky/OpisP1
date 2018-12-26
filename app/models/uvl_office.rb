class UvlOffice < ActiveRecord::Base
    has_many :uvl_receipts
    has_many :uvl_subscriptions
    validates :name, presence: true
    validates :position, presence: true
end
