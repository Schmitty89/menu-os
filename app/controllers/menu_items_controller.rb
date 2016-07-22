class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
  end

  def new
    @menu_item = MenuItem.new
  end
  def create
    @menu_item = MenuItem.new(menu_items_params)

    if @menu_item.save
      redirect_to @menu_item
    else
      render :new
    end
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end


  def update
    @menu_item = MenuItem.find params[:id]

  if @menu_item.update menu_items_params
    redirect_to @menu_item
  else
    render :edit
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end
  def destroy
    @menu_item = Menuitem.find(params[:id])
    @menu_item.destroy
    redirect_to menu_path

  end


end

private
    def menu_items_params
      params.require(:menu_item).permit(:item, :description, :price)
    end
end
