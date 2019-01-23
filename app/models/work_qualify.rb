class WorkQualify < ActiveRecord::Base
    has_many :inca_subscriptions
    has_many :uvl_subscriptions
    has_many :generic_subscriptions
    validates :name, presence: true
    validates :position, presence: true
end
