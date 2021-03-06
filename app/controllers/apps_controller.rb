class AppsController < ApplicationController
  before_action :set_app, only: [:destroy]

  def api
    apps = App.all
    json = apps.map{ |app|
      {
        'name' => app.name, 
        'teamName' => app.team_name,
        'square' => app.square.url,
        'urls' => [app.image0.url, app.image1.url, app.image2.url, app.image3.url],
        'about' => app.about,
        'feature' => app.feature,
        'uid' => app.uid
      }
    }
    render :json => json
  end

  # GET /apps
  # GET /apps.json
  def index
    @apps = App.all
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
    @app = App.find_by(uid: params[:uid])    
  end

  # GET /apps/new
  def new
    @app = App.new
  end

  # GET /apps/1/edit
  def edit
    @app = App.find_by(uid: params[:uid])
  end

  # POST /apps
  # POST /apps.json
  def create
    @app = App.new(app_params)
    @app.count = 0
    @app.uid = SecureRandom.uuid
    respond_to do |format|
      if @app.save
        format.html { redirect_to app_path(uid: @app.uid), notice: 'App was successfully created.' }
        format.json { render :show, status: :created, location: @app }
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
    @app = App.find(params[:uid])
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to app_path(uid: @app.uid), notice: 'App was successfully updated.' }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to admin2017_apps_url, notice: 'App was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:uid])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:name, :team_name, :square, :image0, :image1, :image2, :image3, :about, :feature)
    end
end
