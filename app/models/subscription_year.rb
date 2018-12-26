class SubscriptionYear < ActiveRecord::Base
    has_many :inca_subscriptions
    has_many :uvl_subscriptions
    validates :name, presence: true
end
