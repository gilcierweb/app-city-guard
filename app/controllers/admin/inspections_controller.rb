class Admin::InspectionsController < AdminController
  before_action :set_inspection, only: %i[ show edit update destroy ]

  # GET /admin/inspections or /admin/inspections.json
  def index
    @pagy, @inspections = pagy(Inspection.select(:id, :created_at,:situation, :'users.email', :'conductors.nickname', :'vehicles.kind', :'brands.name' ).joins(:user, conductors:[vehicles: [:brand,:state,:city]]).order(id: :desc))
  end

  # GET /admin/inspections/1 or /admin/inspections/1.json
  def show
  end

  # GET /admin/inspections/new
  def new
    @inspection = Inspection.new
    @inspection.conductors.build
    @inspection.conductors.build.vehicles.build
  end

  # GET /admin/inspections/1/edit
  def edit
  end

  # POST /admin/inspections or /admin/inspections.json
  def create
    puts 'inspection_paramsinspection_paramsinspection_params'
    puts inspection_params.to_json
    puts 'inspection_paramsinspection_paramsinspection_params'
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

  def cities
    city = City.select('cities.id, cities."name_pt_BR" as name').where(state_id: params[:state_id]).order('cities."name_pt_BR" ASC')

    respond_to do |format|
      format.json { render json: { :success => true, :data => city }, :status => :ok }
    end
  end

  def brands
    brand = Brand.select(:id, :name).where(kind: params[:kind]).order(name: :ASC)

    respond_to do |format|
      format.json { render json: { :success => true, :data => brand }, :status => :ok }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_inspection
    @inspection = Inspection.find(params[:id])
  end

  def get_ajax_params
    params.require(:ajax_params).permit(:state_id)
  end

  # Only allow a list of trusted parameters through.
  def inspection_params
    params.require(:inspection).permit(:code, :motive_apprehension, :address_full, :latitude, :longitude, :neighborhood, :observations, :situation, :status, :user_id, equipment_ids:[],
                                       conductors_attributes: [:id, :first_name, :last_name, :full_name, :nickname, :cpf, :birthday, :bio, :inspection_id, :qualified,
                                                               vehicles_attributes: [:id, :kind, :color, :model, :plate, :tachometer, :chassi, :engine_number, :brand_id, :state_id, :city_id, :conductor_id,],
                                       ],
    )
  end
end
