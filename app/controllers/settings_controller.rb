class SettingsController < ApplicationController
  before_action :set_setting, only: %i[ show edit update ]

  # GET /settings or /settings.json
  def index
    @settings = Setting.all
  end

  # GET /settings/1 or /settings/1.json
  def show
    @setting = Setting.find(params[:id])
  end

  # GET /settings/new
  def new
    @setting = Setting.new
  end

  # GET /settings/1/edit
  def edit
  end

  # setting /settings or /settings.json
  def create
    @setting = Setting.new(setting_params)

    respond_to do |format|
      if @setting.save
        format.html { redirect_to @setting, notice: "Setting was successfully created." }
        format.json { render :show, status: :created, location: @setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settings/1 or /settings/1.json
  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to @setting, notice: "Setting was successfully updated." }
        format.json { render :show, status: :ok, location: @setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /settings/1 or /settings/1.json
  def destroy
    @setting.destroy
    respond_to do |format|
      format.html { redirect_to settings_url, notice: "Setting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setting
      @setting = Setting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def setting_params
      params.require(:setting).permit(:blog_title, :blog_sub_title, :root_page_name,
                                      :root_page_content, :root_page_posts, :root_page_menu)
    end
end
