class Admin::InspectionsController < AdminController
  before_action :set_inspection, only: %i[ show edit update destroy ]

  # GET /admin/inspections or /admin/inspections.json
  def index
    @inspections = Inspection.all
  end

  # GET /admin/inspections/1 or /admin/inspections/1.json
  def show
  end

  # GET /admin/inspections/new
  def new
    @inspection = Inspection.new
  end

  # GET /admin/inspections/1/edit
  def edit
  end

  # POST /admin/inspections or /admin/inspections.json
  def create
    @inspection = Inspection.new(inspection_params)

    respond_to do |format|
      if @inspection.save
        format.html { redirect_to admin_inspection_url(@inspection), notice: "Inspection was successfully created." }
        format.json { render :show, status: :created, location: @inspection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/inspections/1 or /admin/inspections/1.json
  def update
    respond_to do |format|
      if @inspection.update(inspection_params)
        format.html { redirect_to admin_inspection_url(@inspection), notice: "Inspection was successfully updated." }
        format.json { render :show, status: :ok, location: @inspection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/inspections/1 or /admin/inspections/1.json
  def destroy
    @inspection.destroy

    respond_to do |format|
      format.html { redirect_to admin_inspections_url, notice: "Inspection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection
      @inspection = Inspection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspection_params
      params.require(:inspection).permit(:code, :motive_apprehension, :address_full, :latitude, :longitude, :neighborhood, :observations, :situation, :status, :user_id)
    end
end
