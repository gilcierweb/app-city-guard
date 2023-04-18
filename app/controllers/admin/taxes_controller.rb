class Admin::TaxesController < AdminController
  before_action :set_tax, only: %i[ show edit update destroy ]

  # GET /admin/taxes or /admin/taxes.json
  def index
    @taxes = Tax.all
  end

  # GET /admin/taxes/1 or /admin/taxes/1.json
  def show
  end

  # GET /admin/taxes/new
  def new
    @tax = Tax.new
  end

  # GET /admin/taxes/1/edit
  def edit
  end

  # POST /admin/taxes or /admin/taxes.json
  def create
    @tax = Tax.new(tax_params)

    respond_to do |format|
      if @tax.save
        format.html { redirect_to admin_tax_url(@tax), notice: "Tax was successfully created." }
        format.json { render :show, status: :created, location: @tax }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/taxes/1 or /admin/taxes/1.json
  def update
    respond_to do |format|
      if @tax.update(tax_params)
        format.html { redirect_to admin_tax_url(@tax), notice: "Tax was successfully updated." }
        format.json { render :show, status: :ok, location: @tax }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/taxes/1 or /admin/taxes/1.json
  def destroy
    @tax.destroy

    respond_to do |format|
      format.html { redirect_to admin_taxes_url, notice: "Tax was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax
      @tax = Tax.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tax_params
      params.require(:tax).permit(:amount, :kind, :status, :user_id)
    end
end
