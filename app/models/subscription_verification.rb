# frozen_string_literal: true

class SubscriptionVerification < ActiveRecord::Base
  has_many :uvl_receipts
end
