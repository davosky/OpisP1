class CompanyTypology < ActiveRecord::Base
    has_many :inca_subscriptions
    has_many :uvl_subscriptions
    validates :name, presence: true
    validates :position, presence: true
end
