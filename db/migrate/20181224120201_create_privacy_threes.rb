class CreatePrivacyThrees < ActiveRecord::Migration
  def change
    create_table :privacy_threes do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
