class SessionsController < ApplicationController

  def new
  end

  def create
    customer = Customer.find_by(email: params[:email])
    if customer == customer.authenticate(params[:email])
      session[:customer_id] = customer.id
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end

  def destroy
  end

end
