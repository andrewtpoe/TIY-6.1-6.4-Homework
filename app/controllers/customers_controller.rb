class CustomersController < ApplicationController

  def new
  end

  def create
    customer = Customer.new(customer_params)
    if customer.save
      session[:customer_id] = customer.id
      redirect_to root_path
    else
      redirect_to '/signup'
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :password)
  end
end