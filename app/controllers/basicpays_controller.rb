class BasicpaysController < ApplicationController
  before_action :set_basicpay, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /basicpays
  # GET /basicpays.json
  def index
    @basicpays = Basicpay.all
  end

  # GET /basicpays/1
  # GET /basicpays/1.json
  def show
  end

  # GET /basicpays/new
  def new
    @basicpay = Basicpay.new
  end

  # GET /basicpays/1/edit
  def edit
  end

  # POST /basicpays
  # POST /basicpays.json
  def create
    @basicpay = Basicpay.new(basicpay_params)

    respond_to do |format|
      if @basicpay.save
        format.html { redirect_to @basicpay, notice: 'Basicpay was successfully created.' }
        format.json { render :show, status: :created, location: @basicpay }
      else
        format.html { render :new }
        format.json { render json: @basicpay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basicpays/1
  # PATCH/PUT /basicpays/1.json
  def update
    respond_to do |format|
      if @basicpay.update(basicpay_params)
        format.html { redirect_to @basicpay, notice: 'Basicpay was successfully updated.' }
        format.json { render :show, status: :ok, location: @basicpay }
      else
        format.html { render :edit }
        format.json { render json: @basicpay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basicpays/1
  # DELETE /basicpays/1.json
  def destroy
    @basicpay.destroy
    respond_to do |format|
      format.html { redirect_to basicpays_url, notice: 'Basicpay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basicpay
      @basicpay = Basicpay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basicpay_params
      params.require(:basicpay).permit(:salary)
    end
end
