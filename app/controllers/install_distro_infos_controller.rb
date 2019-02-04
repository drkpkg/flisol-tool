class InstallDistroInfosController < ApplicationController
  before_action :set_install_distro_info, only: [:show, :edit, :update, :destroy]

  # GET /install_distro_infos
  # GET /install_distro_infos.json
  def index
    @install_distro_infos = InstallDistroInfo.all
  end

  # GET /install_distro_infos/1
  # GET /install_distro_infos/1.json
  def show
  end

  # GET /install_distro_infos/new
  def new
    @install_distro_info = InstallDistroInfo.new
  end

  # GET /install_distro_infos/1/edit
  def edit
  end

  # POST /install_distro_infos
  # POST /install_distro_infos.json
  def create
    @install_distro_info = InstallDistroInfo.new(install_distro_info_params)

    respond_to do |format|
      if @install_distro_info.save
        format.html { redirect_to @install_distro_info, notice: 'Install distro info was successfully created.' }
        format.json { render :show, status: :created, location: @install_distro_info }
      else
        format.html { render :new }
        format.json { render json: @install_distro_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /install_distro_infos/1
  # PATCH/PUT /install_distro_infos/1.json
  def update
    respond_to do |format|
      if @install_distro_info.update(install_distro_info_params)
        format.html { redirect_to @install_distro_info, notice: 'Install distro info was successfully updated.' }
        format.json { render :show, status: :ok, location: @install_distro_info }
      else
        format.html { render :edit }
        format.json { render json: @install_distro_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /install_distro_infos/1
  # DELETE /install_distro_infos/1.json
  def destroy
    @install_distro_info.destroy
    respond_to do |format|
      format.html { redirect_to install_distro_infos_url, notice: 'Install distro info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_install_distro_info
      @install_distro_info = InstallDistroInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def install_distro_info_params
      params.require(:install_distro_info).permit(:people_id, :trouble_id, :distro_id, :installed)
    end
end
