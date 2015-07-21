class ItemsController < ApplicationController

  def index
    @items = Item.for_customer(current_customer)
  end

end
