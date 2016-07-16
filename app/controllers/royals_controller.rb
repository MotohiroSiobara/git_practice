class RoyalsController < ApplicationController
  before_action :set_royal, only: [:show, :edit, :update, :destroy]

  # GET /royals
  # GET /royals.json
  def index
    @royals = Royal.all
  end

  # GET /royals/1
  # GET /royals/1.json
  def show
  end

  # GET /royals/new
  def new
    @royal = Royal.new
  end

  # GET /royals/1/edit
  def edit
  end

  # POST /royals
  # POST /royals.json
  def create
    @royal = Royal.new(royal_params)

    respond_to do |format|
      if @royal.save
        format.html { redirect_to @royal, notice: 'Royal was successfully created.' }
        format.json { render :show, status: :created, location: @royal }
      else
        format.html { render :new }
        format.json { render json: @royal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /royals/1
  # PATCH/PUT /royals/1.json
  def update
    respond_to do |format|
      if @royal.update(royal_params)
        format.html { redirect_to @royal, notice: 'Royal was successfully updated.' }
        format.json { render :show, status: :ok, location: @royal }
      else
        format.html { render :edit }
        format.json { render json: @royal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /royals/1
  # DELETE /royals/1.json
  def destroy
    @royal.destroy
    respond_to do |format|
      format.html { redirect_to royals_url, notice: 'Royal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_royal
      @royal = Royal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def royal_params
      params.fetch(:royal, {})
    end
end
