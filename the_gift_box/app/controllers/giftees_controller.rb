class GifteesController < ApplicationController
  before_action :find_giftee, only: [:edit, :show, :destroy, :add_item, :remove_item]
  def index
    @giftees = Giftee.all
  end

  def create
    Giftee.create giftee_params
  end

  def new
    @giftee = Giftee.new
  end

  def show
  end

  def edit
  end

  def add_item
  end

  def remove_item
  end 

  def destroy
  end

  private
  def giftee_params
    params.require(:giftee).permit(:first_name, :last_name, :username, :email, :address, :phone_number, :password)
  end

  def item_params
    params.require(:item).permit(:name, :quantity)
  end

end
end
