class CreateSubscriptionYears < ActiveRecord::Migration
  def change
    create_table :subscription_years do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
