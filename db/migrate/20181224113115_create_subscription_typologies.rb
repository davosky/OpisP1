class CreateSubscriptionTypologies < ActiveRecord::Migration
  def change
    create_table :subscription_typologies do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
