require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  def setup
    @customer = customers(:one)
    @item = items(:one)
    session[:customer_id] = @customer.id
  end

  test "GET #index" do
    get :index, id: @customer
    assert assigns(:items).include?(@item)
    assert_response 200
  end

  test 'GET #index returns an item list belonging only to the user' do
    get :index, id: @customer
    assigns(:items).each do |item|
      assert_equal item.customer.id, @customer.id
    end
  end

end
