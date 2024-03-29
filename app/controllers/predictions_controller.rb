class PredictionsController < ApplicationController
  before_action :set_prediction, only: %i[ show edit update destroy ]

  # GET /predictions or /predictions.json
  def index
    @sign = params[:sign]
    @predictions = Prediction.where(sign: @sign)
    @prediction = @predictions.order(created_at: :desc).first
  end
  # GET /predictions/1 or /predictions/1.json
  def show
    @prediction = Prediction.where(date: Date.today).first
  end

  # GET /predictions/new
  def new
    @prediction = Prediction.new
  end

  # GET /predictions/1/edit
  def edit
  end

  # POST /predictions or /predictions.json
  def create
    @prediction = Prediction.new(prediction_params)

    respond_to do |format|
      if @prediction.save
        format.html { redirect_to prediction_url(@prediction), notice: "Prediction was successfully created." }
        format.json { render :show, status: :created, location: @prediction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predictions/1 or /predictions/1.json
  def update
    respond_to do |format|
      if @prediction.update(prediction_params)
        format.html { redirect_to prediction_url(@prediction), notice: "Prediction was successfully updated." }
        format.json { render :show, status: :ok, location: @prediction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predictions/1 or /predictions/1.json
  def destroy
    @prediction.destroy!

    respond_to do |format|
      format.html { redirect_to predictions_url, notice: "Prediction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prediction
      @prediction = Prediction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prediction_params
      params.require(:prediction).permit(:date, :sign, :text_work, :text_love, :text_money)
    end
end
