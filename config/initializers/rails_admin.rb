RailsAdmin.config do |config|

  config.authorize_with do
    redirect_to main_app.root_path unless current_user.admin == true
  end

  config.parent_controller = 'ApplicationController'

  require 'i18n'
  I18n.default_locale = :it

  config.main_app_name = ['OpisP1']

  config.model 'User' do
    visible true
    label 'Utente'
    label_plural 'Utenti'
    configure :name do
      label 'Nome e Cognome:'
    end
    configure :institute do
      label 'Istituto:'
    end
    configure :office do
      label 'Ufficio:'
    end
    configure :mobile do
      label 'Cellulare:'
    end
    configure :pec do
      label 'Posta certificata:'
    end
    configure :address do
      label 'Indirizzo:'
    end
    configure :admin do
      label 'Amministratore:'
    end
    configure :manager do
      label 'Direttore:'
    end
    configure :regular do
      label 'Operatore:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'IncaOffice' do
    visible true
    label 'Ufficio INCA'
    label_plural 'Uffici INCA'
    configure :name do
      label 'Ufficio:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'PaymentTypology' do
    visible true
    label 'Tipologia Pagamento'
    label_plural 'Tipologie Pagamento'
    configure :name do
      label 'Tipologia:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'Cancellation' do
    visible true
    label 'Annullamento'
    label_plural 'Annullamento'
    configure :name do
      label 'Annullamento:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'IncaReceipt' do
    visible true
    label 'Ricevuta INCA'
    label_plural 'Ricevute INCA'
    configure :name do
      label 'Numero:'
    end
     configure :date do
      label 'Data:'
    end
    configure :institute do
      label 'Istituto:'
    end
    configure :inca_office do
      label 'Ufficio:'
    end
    configure :user do
      label 'Operatore:'
    end
    configure :customer_name do
      label 'Nome:'
    end
    configure :customer_forname do
      label 'Cognome:'
    end
    configure :customer_birth_place do
      label 'Luogo di nascita:'
    end
    configure :customer_birth_date do
      label 'Data di Nascita:'
    end
    configure :customer_fiscal_code do
      label 'Codice Fiscale:'
    end
    configure :customer_address do
      label 'Indirizzo:'
    end
    configure :customer_zip do
      label 'Cap:'
    end
    configure :customer_city do
      label 'Comune:'
    end
    configure :customer_province do
      label 'Provincia:'
    end
    configure :payment do
      label 'Ammontare:'
    end
    configure :payment_typology do
      label 'Tipologia Pagamento:'
    end
    configure :note do
      label 'Note:'
    end
    configure :cancellation do
      label 'Annullamento:'
    end
    configure :cancellation_reason do
      label 'Motivo Annullamento:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'UvlOffice' do
    visible true
    label 'Ufficio UVL'
    label_plural 'Uffici UVL'
    configure :name do
      label 'Ufficio:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'PractiseTypology' do
    visible true
    label 'Tipologia Pratica UVL'
    label_plural 'Tipologie Pratica UVL'
    configure :name do
      label 'Pratica:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'Lawyer' do
    visible true
    label 'Avvocato'
    label_plural 'Avvocati'
    configure :name do
      label 'Avvocato:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'Category' do
    visible true
    label 'Categoria'
    label_plural 'Categorie'
    configure :name do
      label 'Categoria:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'UvlReceipt' do
    visible true
    label 'Ricevuta UVL'
    label_plural 'Ricevute UVL'
    configure :name do
      label 'Numero:'
    end
     configure :date do
      label 'Data:'
    end
    configure :institute do
      label 'Istituto:'
    end
    configure :uvl_office do
      label 'Ufficio:'
    end
    configure :user do
      label 'Operatore:'
    end
    configure :customer_name do
      label 'Nome:'
    end
    configure :customer_forname do
      label 'Cognome:'
    end
    configure :customer_birth_place do
      label 'Luogo di nascita:'
    end
    configure :customer_birth_date do
      label 'Data di Nascita:'
    end
    configure :customer_fiscal_code do
      label 'Codice Fiscale:'
    end
    configure :customer_address do
      label 'Indirizzo:'
    end
    configure :customer_zip do
      label 'Cap:'
    end
    configure :customer_city do
      label 'Comune:'
    end
    configure :customer_province do
      label 'Provincia:'
    end
    configure :payment do
      label 'Ammontare:'
    end
    configure :payment_typology do
      label 'Tipologia Pagamento:'
    end
    configure :practise_typology do
      label 'Tipologia Pratica:'
    end
    configure :company do
      label 'Azienda:'
    end
    configure :lawyer do
      label 'Avvocato:'
    end
    configure :category do
      label 'Categoria:'
    end
    configure :note do
      label 'Note:'
    end
    configure :cancellation do
      label 'Annullamento:'
    end
    configure :cancellation_reason do
      label 'Motivo Annullamento:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'SubscriptionTypology' do
    visible true
    label 'Tipologia Iscrizione'
    label_plural 'Tipologie Iscrizione'
    configure :name do
      label 'Tipologia Iscrizione:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'CompanyTypology' do
    visible true
    label 'Tipologia Azienda'
    label_plural 'Tipologie Azienda'
    configure :name do
      label 'Tipologia Azienda:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'WorkQualify' do
    visible true
    label 'Tipologia Lavoratore'
    label_plural 'Tipologie Lavoratore'
    configure :name do
      label 'Tipologia Lavoratore:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'WorkLevel' do
    visible true
    label 'Livello'
    label_plural 'Livelli'
    configure :name do
      label 'Livello:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'WorkWorker' do
    visible true
    label 'Tipologia Lavoro'
    label_plural 'Tipologie Lavoro'
    configure :name do
      label 'Tipologia Lavoro:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'SubscriptionYear' do
    visible true
    label 'Anno Sottoscrizione'
    label_plural 'Anni Sottoscrizione'
    configure :name do
      label 'Anno Sottoscrizione:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'IncaPractise' do
    visible true
    label 'Tipologia Pratica INCA'
    label_plural 'Tipologie Pratiche INCA'
    configure :name do
      label 'Pratica INCA:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'PrivacyOne' do
    visible true
    label 'Privacy 1'
    label_plural 'Privacy 1'
    configure :name do
      label 'Privacy 1:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'PrivacyTwo' do
    visible true
    label 'Privacy 2'
    label_plural 'Privacy 2'
    configure :name do
      label 'Privacy 2:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'PrivacyThree' do
    visible true
    label 'Privacy 3'
    label_plural 'Privacy 3'
    configure :name do
      label 'Privacy 3:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'Sex' do
    visible true
    label 'Sesso'
    label_plural 'Sesso'
    configure :name do
      label 'Sesso:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'IncaSubscription' do
    visible true
    label 'Sottoscrizione INCA'
    label_plural 'Sottoscrizioni INCA'
    configure :name do
      label 'Numero:'
    end
     configure :date do
      label 'Data:'
    end
    configure :institute do
      label 'Istituto:'
    end
    configure :inca_office do
      label 'Ufficio:'
    end
    configure :user do
      label 'Operatore:'
    end
    configure :customer_name do
      label 'Nome:'
    end
    configure :customer_forname do
      label 'Cognome:'
    end
    configure :customer_birth_place do
      label 'Luogo di nascita:'
    end
    configure :customer_birth_date do
      label 'Data di Nascita:'
    end
    configure :customer_fiscal_code do
      label 'Codice Fiscale:'
    end
    configure :customer_nationality do
      label 'Cittadinanza:'
    end
    configure :customer_address do
      label 'Indirizzo:'
    end
    configure :customer_zip do
      label 'Cap:'
    end
    configure :customer_city do
      label 'Comune:'
    end
    configure :customer_province do
      label 'Provincia:'
    end
    configure :customer_phone do
      label 'Telefono:'
    end
    configure :customer_mobile do
      label 'Cellulare:'
    end
    configure :customer_email do
      label 'E-Mail:'
    end
    configure :company_name do
      label 'Azienda:'
    end
    configure :company_address do
      label 'Indirizzo Azienda:'
    end
    configure :company_zip do
      label 'Cap Azienda:'
    end
    configure :company_city do
      label 'Comune Azienda:'
    end
    configure :company_province do
      label 'Provincia Azienda:'
    end
    configure :company_typology do
      label 'Tipologia Azienda:'
    end
    configure :work_qualify do
      label 'Qualifiuca:'
    end
    configure :work_level do
      label 'Livello:'
    end
    configure :work_contract do
      label 'Contratto:'
    end
    configure :work_worker do
      label 'Tipologia Lavoro:'
    end
    configure :work_employee_date do
      label 'Data Assunzione:'
    end
    configure :work_workplace do
      label 'Luogo di Lavoro:'
    end
    configure :payment do
      label 'Ammontare:'
    end
    configure :payment_typology do
      label 'Tipologia Pagamento:'
    end
    configure :category do
      label 'Categoria:'
    end
    configure :subscription_year do
      label 'Anno Iscrizione:'
    end
    configure :inca_practise do
      label 'Tipologia Pratica:'
    end
    configure :privacy_one do
      label 'Privacy 1:'
    end
    configure :privacy_two do
      label 'Privacy 2:'
    end
    configure :privacy_three do
      label 'Privacy 3:'
    end
    configure :note do
      label 'Note:'
    end
    configure :cancellation do
      label 'Annullamento:'
    end
    configure :cancellation_reason do
      label 'Motivo Annullamento:'
    end
    configure :pdf do
      label 'Allegato PDF:'
    end
    configure :subscription_typology do
      label 'Tipologia Iscrizione:'
    end
    configure :sex do
      label 'Sesso:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'UvlSubscription' do
    visible true
    label 'Sottoscrizione UVL'
    label_plural 'Sottoscrizioni UVL'
    configure :name do
      label 'Numero:'
    end
     configure :date do
      label 'Data:'
    end
    configure :institute do
      label 'Istituto:'
    end
    configure :uvl_office do
      label 'Ufficio:'
    end
    configure :user do
      label 'Operatore:'
    end
    configure :customer_name do
      label 'Nome:'
    end
    configure :customer_forname do
      label 'Cognome:'
    end
    configure :customer_birth_place do
      label 'Luogo di nascita:'
    end
    configure :customer_birth_date do
      label 'Data di Nascita:'
    end
    configure :customer_fiscal_code do
      label 'Codice Fiscale:'
    end
    configure :customer_nationality do
      label 'Cittadinanza:'
    end
    configure :customer_address do
      label 'Indirizzo:'
    end
    configure :customer_zip do
      label 'Cap:'
    end
    configure :customer_city do
      label 'Comune:'
    end
    configure :customer_province do
      label 'Provincia:'
    end
    configure :customer_phone do
      label 'Telefono:'
    end
    configure :customer_mobile do
      label 'Cellulare:'
    end
    configure :customer_email do
      label 'E-Mail:'
    end
    configure :company_name do
      label 'Azienda:'
    end
    configure :company_address do
      label 'Indirizzo Azienda:'
    end
    configure :company_zip do
      label 'Cap Azienda:'
    end
    configure :company_city do
      label 'Comune Azienda:'
    end
    configure :company_province do
      label 'Provincia Azienda:'
    end
    configure :company_typology do
      label 'Tipologia Azienda:'
    end
    configure :work_qualify do
      label 'Qualifiuca:'
    end
    configure :work_level do
      label 'Livello:'
    end
    configure :work_contract do
      label 'Contratto:'
    end
    configure :work_worker do
      label 'Tipologia Lavoro:'
    end
    configure :work_employee_date do
      label 'Data Assunzione:'
    end
    configure :work_workplace do
      label 'Luogo di Lavoro:'
    end
    configure :payment do
      label 'Ammontare:'
    end
    configure :payment_typology do
      label 'Tipologia Pagamento:'
    end
    configure :category do
      label 'Categoria:'
    end
    configure :subscription_year do
      label 'Anno Iscrizione:'
    end
    configure :practise_typology do
      label 'Tipologia Pratica:'
    end
    configure :privacy_one do
      label 'Privacy 1:'
    end
    configure :privacy_two do
      label 'Privacy 2:'
    end
    configure :privacy_three do
      label 'Privacy 3:'
    end
    configure :note do
      label 'Note:'
    end
    configure :cancellation do
      label 'Annullamento:'
    end
    configure :cancellation_reason do
      label 'Motivo Annullamento:'
    end
    configure :pdf do
      label 'Allegato PDF:'
    end
    configure :subscription_typology do
      label 'Tipologia Iscrizione:'
    end
    configure :sex do
      label 'Sesso:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'Tariff' do
    visible true
    label 'Tariffa'
    label_plural 'Tariffe'
    configure :name do
      visible false
    end
    configure :category do
      label 'Categoria:'
    end
    configure :typology do
      label 'Tipologia:'
    end
    configure :amount do
      label 'Ammontare:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
