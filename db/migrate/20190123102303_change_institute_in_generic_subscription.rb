class ChangeInstituteInGenericSubscription < ActiveRecord::Migration
  def change
    change_column :generic_subscriptions, :institute, :string
  end
end
