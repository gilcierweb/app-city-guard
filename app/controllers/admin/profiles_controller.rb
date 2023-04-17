class Admin::ProfilesController < AdminController
  before_action :set_profile, only: %i[ show edit update destroy ]

  # GET /admin/profiles or /admin/profiles.json
  def index
    @pagy, @profiles = pagy(Profile.includes(:user).order(id: :desc))
  end

  # GET /admin/profiles/1 or /admin/profiles/1.json
  def show
  end

  # GET /admin/profiles/new
  def new
    @profile = Profile.new
  end

  # GET /admin/profiles/1/edit
  def edit
  end

  # POST /admin/profiles or /admin/profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to admin_profile_url(@profile), notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/profiles/1 or /admin/profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to admin_profile_url(@profile), notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/profiles/1 or /admin/profiles/1.json
  def destroy
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to admin_profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :full_name, :nickname, :cpf, :number, :bio, :birthday, :avatar, :status, :user_id,
                                      user_attributes: [:id, :email, :password, :password_confirmation, :role_ids,])
    end
end
