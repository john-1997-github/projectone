class ItemsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
 
  def index
    @items = Item.includes(:user)
 end
 
 def new
  @item = Item.new
 end

 def create
  Item.create(item_params)
 end

 def destroy
  item = Item.find(params[:id])
  item.destroy
end

def edit
end

def update
  item = Item.find(params[:id])
  item.update(item_params)
end

def show
end

 private
 def item_params
  params.require(:item).permit(:name_of_items, :genre, :text, :number_of_items, :memo, :image).merge(user_id: current_user.id)
 end

 def set_tweet
  @item = Item.find(params[:id])
end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end