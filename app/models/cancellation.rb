class Cancellation < ActiveRecord::Base
    has_many :inca_receipts
    has_many :inca_subscriptions
    has_many :uvl_subscriptions
    has_many :uvl_receipts
    has_many :generic_subscriptions
    validates :name, presence: true
end
