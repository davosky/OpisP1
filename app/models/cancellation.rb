class Cancellation < ActiveRecord::Base
    has_many :inca_receipts
    has_many :inca_subscriptions
    has_many :uvl_subscriptions
    has_many :uvl_receipts
    validates :name, presence: true
end
