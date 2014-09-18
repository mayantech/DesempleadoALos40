class ProfessionalUpgradesController < ApplicationController
  before_action :set_professional_upgrade, only: [:show, :edit, :update, :destroy]

  # GET /professional_upgrades
  # GET /professional_upgrades.json
  def index
    @professional_upgrades = ProfessionalUpgrade.all
  end

  # GET /professional_upgrades/1
  # GET /professional_upgrades/1.json
  def show
  end

  # GET /professional_upgrades/new
  def new
    @professional_upgrade = ProfessionalUpgrade.new
    @professional_upgrade.user_id = current_user.id
  end

  # GET /professional_upgrades/1/edit
  def edit
  end

  # POST /professional_upgrades
  # POST /professional_upgrades.json
  def create
    @professional_upgrade = ProfessionalUpgrade.new(professional_upgrade_params)

    respond_to do |format|
      if @professional_upgrade.save
        format.html { redirect_to @professional_upgrade, notice: 'Professional upgrade was successfully created.' }
        format.json { render :show, status: :created, location: @professional_upgrade }
      else
        format.html { render :new }
        format.json { render json: @professional_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professional_upgrades/1
  # PATCH/PUT /professional_upgrades/1.json
  def update
    respond_to do |format|
      if @professional_upgrade.update(professional_upgrade_params)
        format.html { redirect_to @professional_upgrade, notice: 'Professional upgrade was successfully updated.' }
        format.json { render :show, status: :ok, location: @professional_upgrade }
      else
        format.html { render :edit }
        format.json { render json: @professional_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_upgrades/1
  # DELETE /professional_upgrades/1.json
  def destroy
    @professional_upgrade.destroy
    respond_to do |format|
      format.html { redirect_to professional_upgrades_url, notice: 'Professional upgrade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_upgrade
      @professional_upgrade = ProfessionalUpgrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professional_upgrade_params
      params.require(:professional_upgrade).permit(:user_id, :year, :institution, :upgrade, :academic_title, :country_id)
    end
end
