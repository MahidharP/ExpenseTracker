class NightShiftsController < ApplicationController
  before_action :set_night_shift, only: [:show, :edit, :update, :destroy]

  # GET /night_shifts
  # GET /night_shifts.json
  def index
    @night_shifts = NightShift.all
  end

  # GET /night_shifts/1
  # GET /night_shifts/1.json
  def show
  end

  # GET /night_shifts/new
  def new
    @night_shift = NightShift.new
  end

  # GET /night_shifts/1/edit
  def edit
  end

  # POST /night_shifts
  # POST /night_shifts.json
  def create
    @night_shift = NightShift.new(night_shift_params)

    respond_to do |format|
      if @night_shift.save
        format.html { redirect_to @night_shift, notice: 'Night shift was successfully created.' }
        format.json { render :show, status: :created, location: @night_shift }
      else
        format.html { render :new }
        format.json { render json: @night_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /night_shifts/1
  # PATCH/PUT /night_shifts/1.json
  def update
    respond_to do |format|
      if @night_shift.update(night_shift_params)
        format.html { redirect_to @night_shift, notice: 'Night shift was successfully updated.' }
        format.json { render :show, status: :ok, location: @night_shift }
      else
        format.html { render :edit }
        format.json { render json: @night_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /night_shifts/1
  # DELETE /night_shifts/1.json
  def destroy
    @night_shift.destroy
    respond_to do |format|
      format.html { redirect_to night_shifts_url, notice: 'Night shift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_night_shift
      @night_shift = NightShift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def night_shift_params
      params.require(:night_shift).permit(:date, :claim, :basicpay_id)
    end
end
