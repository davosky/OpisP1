class CreatePrivacyTwos < ActiveRecord::Migration
  def change
    create_table :privacy_twos do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
