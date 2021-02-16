class AbbreviationsController < ApplicationController
  before_action :set_abbreviation, only: [:show, :edit, :update, :destroy]

  # GET /abbreviations
  # GET /abbreviations.json
  def index
    @abbreviations = Abbreviation.all
  end

  # GET /abbreviations/1
  # GET /abbreviations/1.json
  def show
  end

  # GET /abbreviations/new
  def new
    @abbreviation = Abbreviation.new
  end

  # GET /abbreviations/1/edit
  def edit
  end

  # POST /abbreviations
  # POST /abbreviations.json
  def create
    @abbreviation = Abbreviation.new(abbreviation_params)

    respond_to do |format|
      if @abbreviation.save
        format.html { redirect_to @abbreviation, notice: 'Abbreviation was successfully created.' }
        format.json { render :show, status: :created, location: @abbreviation }
      else
        format.html { render :new }
        format.json { render json: @abbreviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abbreviations/1
  # PATCH/PUT /abbreviations/1.json
  def update
    respond_to do |format|
      if @abbreviation.update(abbreviation_params)
        format.html { redirect_to @abbreviation, notice: 'Abbreviation was successfully updated.' }
        format.json { render :show, status: :ok, location: @abbreviation }
      else
        format.html { render :edit }
        format.json { render json: @abbreviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abbreviations/1
  # DELETE /abbreviations/1.json
  def destroy
    @abbreviation.destroy
    respond_to do |format|
      format.html { redirect_to abbreviations_url, notice: 'Abbreviation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abbreviation
      @abbreviation = Abbreviation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def abbreviation_params
      params.require(:abbreviation).permit(:name, :product_id)
    end
end
