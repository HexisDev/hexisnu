class SeatmapsController < ApplicationController
  before_action :set_seatmap, only: [:show, :edit, :update, :destroy]

  # GET /seatmaps
  # GET /seatmaps.json
  def index
    @seatmaps = Seatmap.all
  end

  # GET /seatmaps/1
  # GET /seatmaps/1.json
  def show
    @seatmap = Seatmap.find(params[:id])
  end

  # GET /seatmaps/new
  def new
    @seatmap = Seatmap.new
    @rows = @seatmap.rows.build
    @seats = @rows.seats.build
  end

  # GET /seatmaps/1/edit
  def edit
    @seatmap = Seatmap.find(params[:id])
  end

  # POST /seatmaps
  # POST /seatmaps.json
  def create
    @seatmap = Seatmap.create(seatmap_params)

    respond_to do |format|
      if @seatmap.save
        format.html { redirect_to @seatmap, notice: 'Seatmap was successfully created.' }
        format.json { render :show, status: :created, location: @seatmap }
      else
        format.html { render :new }
        format.json { render json: @seatmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seatmaps/1
  # PATCH/PUT /seatmaps/1.json
  def update
    @seatmap = Seatmap.find(params[:id])
    respond_to do |format|
      if @seatmap.update(seatmap_params)
        format.html { redirect_to @seatmap, notice: 'Seatmap was successfully updated.' }
        format.json { render :show, status: :ok, location: @seatmap }
      else
        format.html { render :edit }
        format.json { render json: @seatmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seatmaps/1
  # DELETE /seatmaps/1.json
  def destroy
    @seatmap.destroy
    respond_to do |format|
      format.html { redirect_to seatmaps_url, notice: 'Seatmap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seatmap
      @seatmap = Seatmap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seatmap_params
      params.require(:seatmap).permit(:name, rows_attributes: [:id, :name, :x_coord, :y_coord])
    end
end