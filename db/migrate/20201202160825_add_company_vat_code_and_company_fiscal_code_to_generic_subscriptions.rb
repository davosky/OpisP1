class AddCompanyVatCodeAndCompanyFiscalCodeToGenericSubscriptions < ActiveRecord::Migration
  def change
    add_column :generic_subscriptions, :company_vat_code, :string
    add_column :generic_subscriptions, :company_fiscal_code, :string
  end
end
