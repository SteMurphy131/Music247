class UserLabelsController < ApplicationController
  before_action :set_user_label, only: [:show, :edit, :update, :destroy]
  before_action :authorise
  # GET /user_labels
  # GET /user_labels.json
  def index
    @user_labels = UserLabel.all
  end

  # GET /user_labels/1
  # GET /user_labels/1.json
  def show
  end

  # GET /user_labels/new
  def new
    @user_label = UserLabel.new
  end

  # GET /user_labels/1/edit
  def edit
  end

  # POST /user_labels
  # POST /user_labels.json
  def create
	@user_label = UserLabel.new
	@label = Label.find params[:label_id]
	@user_label.user_id = @current_user.id
	@user_label.label_id = @label.id
	
    respond_to do |format|
      if @user_label.save
        format.html { redirect_to @label, notice: 'User label was successfully created.' }
        format.json { render :show, status: :created, location: @user_label }
      else
        format.html { render :new }
        format.json { render json: @user_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_labels/1
  # PATCH/PUT /user_labels/1.json
  def update
    respond_to do |format|
      if @user_label.update(user_label_params)
        format.html { redirect_to @user_label, notice: 'User label was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_label }
      else
        format.html { render :edit }
        format.json { render json: @user_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_labels/1
  # DELETE /user_labels/1.json
  def destroy
    @user_label.destroy
    respond_to do |format|
      format.html { redirect_to user_labels_url, notice: 'User label was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_label
      @user_label = UserLabel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_label_params
      params.require(:user_label).permit(:user_id, :label_id)
    end
end
