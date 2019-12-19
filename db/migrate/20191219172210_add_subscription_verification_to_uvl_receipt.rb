class AddSubscriptionVerificationToUvlReceipt < ActiveRecord::Migration
  def change
    add_reference :uvl_receipts, :subscription_verification, index: true, foreign_key: true
  end
end
