 class Admins::ItemsController < ApplicationController
  
  def index
   @items = Item.all
  end

  def new
   @item = Item.new
  end
  
  def create
   @item = Item.new(item_params)
   @item.save
   redirect_to admins_top
  end
  
  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end
  
  private
  
  def item_params
   
  
 end