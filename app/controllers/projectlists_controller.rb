class ProjectlistsController < ActionController::TestCase
  include Devise::Test::IntegrationHelpers
  before_action :set_projectlist, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /projectlists or /projectlists.json
  def index
    @projectlists = Projectlist.all
  end

  # GET /projectlists/1 or /projectlists/1.json
  def show
  end

  # GET /projectlists/new
  def new
    @projectlist = Projectlist.new
  end

  # GET /projectlists/1/edit
  def edit
  end

  # POST /projectlists or /projectlists.json
  def create
    @projectlist = Projectlist.new(projectlist_params)

    respond_to do |format|
      if @projectlist.save
        format.html { redirect_to @projectlist, notice: "Projectlist was successfully created." }
        format.json { render :show, status: :created, location: @projectlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @projectlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectlists/1 or /projectlists/1.json
  def update
    respond_to do |format|
      if @projectlist.update(projectlist_params)
        format.html { redirect_to @projectlist, notice: "Projectlist was successfully updated." }
        format.json { render :show, status: :ok, location: @projectlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @projectlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectlists/1 or /projectlists/1.json
  def destroy
    @projectlist.destroy
    respond_to do |format|
      format.html { redirect_to projectlists_url, notice: "Projectlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectlist
      @projectlist = Projectlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projectlist_params
      params.require(:projectlist).permit(:username, :name, :language, :description, :status, :RepoURL)
    end
end
