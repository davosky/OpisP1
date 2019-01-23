class AddPdfToGenericSubscription < ActiveRecord::Migration

  def up
    add_attachment :generic_subscriptions, :pdf
  end

  def down
    remove_attachment :generic_subscriptions, :pdf
  end
end
