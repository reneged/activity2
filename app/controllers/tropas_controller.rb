class TropasController < ApplicationController
  before_action :set_tropa, only: [:show, :edit, :update, :destroy]

  # GET /tropas
  # GET /tropas.json
  def index
    @tropas = Tropa.all
  end

  # GET /tropas/1
  # GET /tropas/1.json
  def show
  end

  # GET /tropas/new
  def new
    @tropa = Tropa.new
  end

  # GET /tropas/1/edit
  def edit
  end

  # POST /tropas
  # POST /tropas.json
  def create
    @tropa = Tropa.new(tropa_params)

    respond_to do |format|
      if @tropa.save
        format.html { redirect_to @tropa, notice: 'Tropa was successfully created.' }
        format.json { render :show, status: :created, location: @tropa }
      else
        format.html { render :new }
        format.json { render json: @tropa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tropas/1
  # PATCH/PUT /tropas/1.json
  def update
    respond_to do |format|
      if @tropa.update(tropa_params)
        format.html { redirect_to @tropa, notice: 'Tropa was successfully updated.' }
        format.json { render :show, status: :ok, location: @tropa }
      else
        format.html { render :edit }
        format.json { render json: @tropa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tropas/1
  # DELETE /tropas/1.json
  def destroy
    @tropa.destroy
    respond_to do |format|
      format.html { redirect_to tropas_url, notice: 'Tropa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tropa
      @tropa = Tropa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tropa_params
      params.require(:tropa).permit(:name, :age, :dob, :contactNo)
    end
end
