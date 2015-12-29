class ItemsController < ApplicationController
  load_and_authorize_resource


  def index
  end

  def new
    respond_to do |format|
      format.html
      format.json { render json: @item }
    end
  end

  def create
    @item.save
    redirect_to items_path
  end

  def show
  end

  def update
    if @item.present?
      @item.update(item_params)
    else 
      @item.save
    end
    redirect_to items_path
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  def custom
    Rails.logger.debug("custom submit button")
  end

  private
    def item_params
      params.require(:item).permit(:name, :category_id, :price)
    end

end