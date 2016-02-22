class UserArtistsController < ApplicationController
  before_action :set_user_artist, only: [:show, :edit, :update, :destroy]
  before_action :authorise
  # GET /user_artists
  # GET /user_artists.json
  def index
    @user_artists = UserArtist.all
  end

  # GET /user_artists/1
  # GET /user_artists/1.json
  def show
  end

  # GET /user_artists/new
  def new
    @user_artist = UserArtist.new
  end

  # GET /user_artists/1/edit
  def edit
  end

  # POST /user_artists
  # POST /user_artists.json
  def create
    @user_artist = UserArtist.new
	@artist = Artist.find params[:artist_id]
	@user_artist.user_id = @current_user.id
	@user_artist.artist_id = @artist.id
	
    respond_to do |format|
      if @user_artist.save
        format.html { redirect_to @artist, notice: 'User artist was successfully created.' }
        format.json { render :show, status: :created, location: @user_artist }
      else
        format.html { render :new }
        format.json { render json: @user_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_artists/1
  # PATCH/PUT /user_artists/1.json
  def update
    respond_to do |format|
      if @user_artist.update(user_artist_params)
        format.html { redirect_to @user_artist, notice: 'User artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_artist }
      else
        format.html { render :edit }
        format.json { render json: @user_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_artists/1
  # DELETE /user_artists/1.json
  def destroy
    @user_artist.destroy
    respond_to do |format|
      format.html { redirect_to user_artists_url, notice: 'User artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_artist
      @user_artist = UserArtist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_artist_params
      params.require(:user_artist).permit(:user_id, :artist_id)
    end
end
