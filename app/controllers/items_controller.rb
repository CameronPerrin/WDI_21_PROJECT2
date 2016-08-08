class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :add_to_wishlist, :add_to_cart, :destroy]
  before_action :protect!, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all.sort { |a,b| b.created_at <=> a.created_at }
  end

  # GET /items/1
  # GET /items/1.json
  def show
    # @wishlist = Wishlist.new

  end

  def add_to_wishlist()
    Wishlist.create(user_id: current_user.id, item_id: @item.id)
    redirect_to @item
    flash[:notice] = "Added to wishlist"
  end

  def add_to_cart()
    Cart.create(user_id: current_user.id, item_id: @item.id)
    redirect_to @item
    flash[:notice] = "Added to cart"
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = current_user.items.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def protect!
      if !(user_signed_in? && (current_user == @item.user))
        redirect_to @item
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :description, :armor_photo, :user_id, :item_image, :category_ids => [])
    end
end
