class PaymentPartnersController < ApplicationController
  before_action :set_payment_partner, only: %i[ show edit update destroy ]

  # GET /payment_partners or /payment_partners.json
  def index
    @payment_partners = PaymentPartner.all
  end

  # GET /payment_partners/1 or /payment_partners/1.json
  def show
  end

  # GET /payment_partners/new
  def new
    @payment_partner = PaymentPartner.new
  end

  # GET /payment_partners/1/edit
  def edit
  end

  # POST /payment_partners or /payment_partners.json
  def create
    @payment_partner = PaymentPartner.new(payment_partner_params)

    respond_to do |format|
      if @payment_partner.save
        format.html { redirect_to payment_partner_url(@payment_partner), notice: "Payment partner was successfully created." }
        format.json { render :show, status: :created, location: @payment_partner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_partners/1 or /payment_partners/1.json
  def update
    respond_to do |format|
      if @payment_partner.update(payment_partner_params)
        format.html { redirect_to payment_partner_url(@payment_partner), notice: "Payment partner was successfully updated." }
        format.json { render :show, status: :ok, location: @payment_partner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_partners/1 or /payment_partners/1.json
  def destroy
    @payment_partner.destroy

    respond_to do |format|
      format.html { redirect_to payment_partners_url, notice: "Payment partner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_partner
      @payment_partner = PaymentPartner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_partner_params
      params.require(:payment_partner).permit(:name)
    end
end
