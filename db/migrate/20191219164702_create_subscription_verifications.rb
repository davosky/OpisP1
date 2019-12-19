class CreateSubscriptionVerifications < ActiveRecord::Migration
  def change
    create_table :subscription_verifications do |t|
      t.text :wording
      t.integer :position
      t.string :description

      t.timestamps null: false
    end
  end
end
