class ShopOwnersController < ApplicationController
  before_action :set_shop_owner, only: %i[ show edit update destroy ]

  # GET /shop_owners or /shop_owners.json
  def index
    @shop_owners = ShopOwner.all
  end

  # GET /shop_owners/1 or /shop_owners/1.json
  def show
  end

  # GET /shop_owners/new
  def new
    @shop_owner = ShopOwner.new
  end

  # GET /shop_owners/1/edit
  def edit
  end

  # POST /shop_owners or /shop_owners.json
  def create
    @shop_owner = ShopOwner.new(shop_owner_params)

    respond_to do |format|
      if @shop_owner.save
        format.html { redirect_to shop_owner_url(@shop_owner), notice: "Shop owner was successfully created." }
        format.json { render :show, status: :created, location: @shop_owner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shop_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_owners/1 or /shop_owners/1.json
  def update
    respond_to do |format|
      if @shop_owner.update(shop_owner_params)
        format.html { redirect_to shop_owner_url(@shop_owner), notice: "Shop owner was successfully updated." }
        format.json { render :show, status: :ok, location: @shop_owner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shop_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_owners/1 or /shop_owners/1.json
  def destroy
    @shop_owner.destroy

    respond_to do |format|
      format.html { redirect_to shop_owners_url, notice: "Shop owner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_owner
      @shop_owner = ShopOwner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shop_owner_params
      params.require(:shop_owner).permit(:user_id)
    end
end
