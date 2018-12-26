class Lawyer < ActiveRecord::Base
    has_many :uvl_receipts
    validates :name, presence: true
    validates :position, presence: true
end
