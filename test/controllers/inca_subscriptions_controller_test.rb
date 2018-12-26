require 'test_helper'

class IncaSubscriptionsControllerTest < ActionController::TestCase
  setup do
    @inca_subscription = inca_subscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inca_subscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inca_subscription" do
    assert_difference('IncaSubscription.count') do
      post :create, inca_subscription: { cancellation_id: @inca_subscription.cancellation_id, cancellation_reason: @inca_subscription.cancellation_reason, category_id: @inca_subscription.category_id, company_address: @inca_subscription.company_address, company_city: @inca_subscription.company_city, company_name: @inca_subscription.company_name, company_province: @inca_subscription.company_province, company_typology_id: @inca_subscription.company_typology_id, company_zip: @inca_subscription.company_zip, customer_address: @inca_subscription.customer_address, customer_birth_date: @inca_subscription.customer_birth_date, customer_birth_place: @inca_subscription.customer_birth_place, customer_city: @inca_subscription.customer_city, customer_email: @inca_subscription.customer_email, customer_fiscal_code: @inca_subscription.customer_fiscal_code, customer_forname: @inca_subscription.customer_forname, customer_mobile: @inca_subscription.customer_mobile, customer_name: @inca_subscription.customer_name, customer_nationality: @inca_subscription.customer_nationality, customer_phone: @inca_subscription.customer_phone, customer_province: @inca_subscription.customer_province, customer_zip: @inca_subscription.customer_zip, date: @inca_subscription.date, inca_office_id: @inca_subscription.inca_office_id, inca_practise_id: @inca_subscription.inca_practise_id, institute: @inca_subscription.institute, name: @inca_subscription.name, note: @inca_subscription.note, payment: @inca_subscription.payment, payment_typology_id: @inca_subscription.payment_typology_id, pdf: @inca_subscription.pdf, privacy_one_id: @inca_subscription.privacy_one_id, privacy_three_id: @inca_subscription.privacy_three_id, privacy_two_id: @inca_subscription.privacy_two_id, sex_id: @inca_subscription.sex_id, subscription_typology_id: @inca_subscription.subscription_typology_id, subscription_year_id: @inca_subscription.subscription_year_id, user_id: @inca_subscription.user_id, work_contract: @inca_subscription.work_contract, work_employee_date: @inca_subscription.work_employee_date, work_level_id: @inca_subscription.work_level_id, work_qualify_id: @inca_subscription.work_qualify_id, work_worker_id: @inca_subscription.work_worker_id, work_workplace: @inca_subscription.work_workplace }
    end

    assert_redirected_to inca_subscription_path(assigns(:inca_subscription))
  end

  test "should show inca_subscription" do
    get :show, id: @inca_subscription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inca_subscription
    assert_response :success
  end

  test "should update inca_subscription" do
    patch :update, id: @inca_subscription, inca_subscription: { cancellation_id: @inca_subscription.cancellation_id, cancellation_reason: @inca_subscription.cancellation_reason, category_id: @inca_subscription.category_id, company_address: @inca_subscription.company_address, company_city: @inca_subscription.company_city, company_name: @inca_subscription.company_name, company_province: @inca_subscription.company_province, company_typology_id: @inca_subscription.company_typology_id, company_zip: @inca_subscription.company_zip, customer_address: @inca_subscription.customer_address, customer_birth_date: @inca_subscription.customer_birth_date, customer_birth_place: @inca_subscription.customer_birth_place, customer_city: @inca_subscription.customer_city, customer_email: @inca_subscription.customer_email, customer_fiscal_code: @inca_subscription.customer_fiscal_code, customer_forname: @inca_subscription.customer_forname, customer_mobile: @inca_subscription.customer_mobile, customer_name: @inca_subscription.customer_name, customer_nationality: @inca_subscription.customer_nationality, customer_phone: @inca_subscription.customer_phone, customer_province: @inca_subscription.customer_province, customer_zip: @inca_subscription.customer_zip, date: @inca_subscription.date, inca_office_id: @inca_subscription.inca_office_id, inca_practise_id: @inca_subscription.inca_practise_id, institute: @inca_subscription.institute, name: @inca_subscription.name, note: @inca_subscription.note, payment: @inca_subscription.payment, payment_typology_id: @inca_subscription.payment_typology_id, pdf: @inca_subscription.pdf, privacy_one_id: @inca_subscription.privacy_one_id, privacy_three_id: @inca_subscription.privacy_three_id, privacy_two_id: @inca_subscription.privacy_two_id, sex_id: @inca_subscription.sex_id, subscription_typology_id: @inca_subscription.subscription_typology_id, subscription_year_id: @inca_subscription.subscription_year_id, user_id: @inca_subscription.user_id, work_contract: @inca_subscription.work_contract, work_employee_date: @inca_subscription.work_employee_date, work_level_id: @inca_subscription.work_level_id, work_qualify_id: @inca_subscription.work_qualify_id, work_worker_id: @inca_subscription.work_worker_id, work_workplace: @inca_subscription.work_workplace }
    assert_redirected_to inca_subscription_path(assigns(:inca_subscription))
  end

  test "should destroy inca_subscription" do
    assert_difference('IncaSubscription.count', -1) do
      delete :destroy, id: @inca_subscription
    end

    assert_redirected_to inca_subscriptions_path
  end
end
