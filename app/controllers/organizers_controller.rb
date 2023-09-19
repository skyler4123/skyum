class OrganizersController < ApplicationController
  before_action :set_organizer, only: %i[ show edit update destroy ]

  # GET /organizers or /organizers.json
  def index
    @organizers = Organizer.all
  end

  # GET /organizers/1 or /organizers/1.json
  def show
  end

  # GET /organizers/new
  def new
    @organizer = Organizer.new
  end

  # GET /organizers/1/edit
  def edit
  end

  # POST /organizers or /organizers.json
  def create
    @organizer = Organizer.new(organizer_params)

    respond_to do |format|
      if @organizer.save
        format.html { redirect_to organizer_url(@organizer), notice: "Organizer was successfully created." }
        format.json { render :show, status: :created, location: @organizer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizers/1 or /organizers/1.json
  def update
    respond_to do |format|
      if @organizer.update(organizer_params)
        format.html { redirect_to organizer_url(@organizer), notice: "Organizer was successfully updated." }
        format.json { render :show, status: :ok, location: @organizer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizers/1 or /organizers/1.json
  def destroy
    @organizer.destroy

    respond_to do |format|
      format.html { redirect_to organizers_url, notice: "Organizer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organizer
      @organizer = Organizer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organizer_params
      params.require(:organizer).permit(:email)
    end
end
