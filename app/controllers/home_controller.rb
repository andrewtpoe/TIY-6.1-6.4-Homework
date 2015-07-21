class HomeController < ApplicationController
  def index
    if current_customer
      items = Item.for_customer(current_customer)
    # else
    #   current_customer = nil
    end

    # binding.pry

  end
end
