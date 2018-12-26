class CreateCompanyTypologies < ActiveRecord::Migration
  def change
    create_table :company_typologies do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
