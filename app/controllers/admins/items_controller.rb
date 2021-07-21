 class Admins::ItemsController < ApplicationController
  
  def index
   @items = Item.all
   @genre = Genre.all
  end

  def new
   @item = Item.new
  end
  
  def create
   @item = Item.new(item_params)
   @item.save
   redirect_to admins_top_path
  end
  
  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end
  
  private
  
  def item_params
   params.require(:item).permit(:name,:introduction,:image,:price,:is_active, :genre_id)
  end
  
 end