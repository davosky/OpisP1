class AddCompanyVatCodeAndCompanyFiscalCodeToIncaSubscriptions < ActiveRecord::Migration
  def change
    add_column :inca_subscriptions, :company_vat_code, :string
    add_column :inca_subscriptions, :company_fiscal_code, :string
  end
end
