require 'test_helper'

class GenericSubscriptionsControllerTest < ActionController::TestCase
  setup do
    @generic_subscription = generic_subscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_subscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_subscription" do
    assert_difference('GenericSubscription.count') do
      post :create, generic_subscription: { cancellation_id: @generic_subscription.cancellation_id, cancellation_reason: @generic_subscription.cancellation_reason, category_id: @generic_subscription.category_id, company_address: @generic_subscription.company_address, company_city: @generic_subscription.company_city, company_name: @generic_subscription.company_name, company_province: @generic_subscription.company_province, company_typology_id: @generic_subscription.company_typology_id, company_zip: @generic_subscription.company_zip, customer_address: @generic_subscription.customer_address, customer_birth_date: @generic_subscription.customer_birth_date, customer_birth_place: @generic_subscription.customer_birth_place, customer_city: @generic_subscription.customer_city, customer_email: @generic_subscription.customer_email, customer_fiscal_code: @generic_subscription.customer_fiscal_code, customer_forname: @generic_subscription.customer_forname, customer_mobile: @generic_subscription.customer_mobile, customer_name: @generic_subscription.customer_name, customer_nationality: @generic_subscription.customer_nationality, customer_phone: @generic_subscription.customer_phone, customer_province: @generic_subscription.customer_province, customer_zip: @generic_subscription.customer_zip, date: @generic_subscription.date, generic_office_id: @generic_subscription.generic_office_id, generic_practise_id: @generic_subscription.generic_practise_id, institute: @generic_subscription.institute, name: @generic_subscription.name, note: @generic_subscription.note, payment: @generic_subscription.payment, payment_typology_id: @generic_subscription.payment_typology_id, privacy_one_id: @generic_subscription.privacy_one_id, privacy_three_id: @generic_subscription.privacy_three_id, privacy_two_id: @generic_subscription.privacy_two_id, sex_id: @generic_subscription.sex_id, subscription_typology_id: @generic_subscription.subscription_typology_id, subscription_year_id: @generic_subscription.subscription_year_id, user_id: @generic_subscription.user_id, work_contract: @generic_subscription.work_contract, work_employee_date: @generic_subscription.work_employee_date, work_level_id: @generic_subscription.work_level_id, work_qualify_id: @generic_subscription.work_qualify_id, work_worker_id: @generic_subscription.work_worker_id, work_workplace: @generic_subscription.work_workplace }
    end

    assert_redirected_to generic_subscription_path(assigns(:generic_subscription))
  end

  test "should show generic_subscription" do
    get :show, id: @generic_subscription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_subscription
    assert_response :success
  end

  test "should update generic_subscription" do
    patch :update, id: @generic_subscription, generic_subscription: { cancellation_id: @generic_subscription.cancellation_id, cancellation_reason: @generic_subscription.cancellation_reason, category_id: @generic_subscription.category_id, company_address: @generic_subscription.company_address, company_city: @generic_subscription.company_city, company_name: @generic_subscription.company_name, company_province: @generic_subscription.company_province, company_typology_id: @generic_subscription.company_typology_id, company_zip: @generic_subscription.company_zip, customer_address: @generic_subscription.customer_address, customer_birth_date: @generic_subscription.customer_birth_date, customer_birth_place: @generic_subscription.customer_birth_place, customer_city: @generic_subscription.customer_city, customer_email: @generic_subscription.customer_email, customer_fiscal_code: @generic_subscription.customer_fiscal_code, customer_forname: @generic_subscription.customer_forname, customer_mobile: @generic_subscription.customer_mobile, customer_name: @generic_subscription.customer_name, customer_nationality: @generic_subscription.customer_nationality, customer_phone: @generic_subscription.customer_phone, customer_province: @generic_subscription.customer_province, customer_zip: @generic_subscription.customer_zip, date: @generic_subscription.date, generic_office_id: @generic_subscription.generic_office_id, generic_practise_id: @generic_subscription.generic_practise_id, institute: @generic_subscription.institute, name: @generic_subscription.name, note: @generic_subscription.note, payment: @generic_subscription.payment, payment_typology_id: @generic_subscription.payment_typology_id, privacy_one_id: @generic_subscription.privacy_one_id, privacy_three_id: @generic_subscription.privacy_three_id, privacy_two_id: @generic_subscription.privacy_two_id, sex_id: @generic_subscription.sex_id, subscription_typology_id: @generic_subscription.subscription_typology_id, subscription_year_id: @generic_subscription.subscription_year_id, user_id: @generic_subscription.user_id, work_contract: @generic_subscription.work_contract, work_employee_date: @generic_subscription.work_employee_date, work_level_id: @generic_subscription.work_level_id, work_qualify_id: @generic_subscription.work_qualify_id, work_worker_id: @generic_subscription.work_worker_id, work_workplace: @generic_subscription.work_workplace }
    assert_redirected_to generic_subscription_path(assigns(:generic_subscription))
  end

  test "should destroy generic_subscription" do
    assert_difference('GenericSubscription.count', -1) do
      delete :destroy, id: @generic_subscription
    end

    assert_redirected_to generic_subscriptions_path
  end
end
