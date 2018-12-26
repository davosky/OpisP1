require 'test_helper'

class UvlReceiptsControllerTest < ActionController::TestCase
  setup do
    @uvl_receipt = uvl_receipts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uvl_receipts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uvl_receipt" do
    assert_difference('UvlReceipt.count') do
      post :create, uvl_receipt: { cancellation_id: @uvl_receipt.cancellation_id, cancellation_reason: @uvl_receipt.cancellation_reason, category_id: @uvl_receipt.category_id, company: @uvl_receipt.company, customer_address: @uvl_receipt.customer_address, customer_birth_date: @uvl_receipt.customer_birth_date, customer_birth_place: @uvl_receipt.customer_birth_place, customer_city: @uvl_receipt.customer_city, customer_fiscal_code: @uvl_receipt.customer_fiscal_code, customer_forname: @uvl_receipt.customer_forname, customer_name: @uvl_receipt.customer_name, customer_province: @uvl_receipt.customer_province, customer_zip: @uvl_receipt.customer_zip, date: @uvl_receipt.date, institute: @uvl_receipt.institute, lawyer_id: @uvl_receipt.lawyer_id, name: @uvl_receipt.name, note: @uvl_receipt.note, payment: @uvl_receipt.payment, payment_typology_id: @uvl_receipt.payment_typology_id, pdf: @uvl_receipt.pdf, practise_typology_id: @uvl_receipt.practise_typology_id, user_id: @uvl_receipt.user_id, uvl_office_id: @uvl_receipt.uvl_office_id }
    end

    assert_redirected_to uvl_receipt_path(assigns(:uvl_receipt))
  end

  test "should show uvl_receipt" do
    get :show, id: @uvl_receipt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uvl_receipt
    assert_response :success
  end

  test "should update uvl_receipt" do
    patch :update, id: @uvl_receipt, uvl_receipt: { cancellation_id: @uvl_receipt.cancellation_id, cancellation_reason: @uvl_receipt.cancellation_reason, category_id: @uvl_receipt.category_id, company: @uvl_receipt.company, customer_address: @uvl_receipt.customer_address, customer_birth_date: @uvl_receipt.customer_birth_date, customer_birth_place: @uvl_receipt.customer_birth_place, customer_city: @uvl_receipt.customer_city, customer_fiscal_code: @uvl_receipt.customer_fiscal_code, customer_forname: @uvl_receipt.customer_forname, customer_name: @uvl_receipt.customer_name, customer_province: @uvl_receipt.customer_province, customer_zip: @uvl_receipt.customer_zip, date: @uvl_receipt.date, institute: @uvl_receipt.institute, lawyer_id: @uvl_receipt.lawyer_id, name: @uvl_receipt.name, note: @uvl_receipt.note, payment: @uvl_receipt.payment, payment_typology_id: @uvl_receipt.payment_typology_id, pdf: @uvl_receipt.pdf, practise_typology_id: @uvl_receipt.practise_typology_id, user_id: @uvl_receipt.user_id, uvl_office_id: @uvl_receipt.uvl_office_id }
    assert_redirected_to uvl_receipt_path(assigns(:uvl_receipt))
  end

  test "should destroy uvl_receipt" do
    assert_difference('UvlReceipt.count', -1) do
      delete :destroy, id: @uvl_receipt
    end

    assert_redirected_to uvl_receipts_path
  end
end
