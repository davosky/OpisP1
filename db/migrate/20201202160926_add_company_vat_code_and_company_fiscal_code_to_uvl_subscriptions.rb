class AddCompanyVatCodeAndCompanyFiscalCodeToUvlSubscriptions < ActiveRecord::Migration
  def change
    add_column :uvl_subscriptions, :company_vat_code, :string
    add_column :uvl_subscriptions, :company_fiscal_code, :string
  end
end
