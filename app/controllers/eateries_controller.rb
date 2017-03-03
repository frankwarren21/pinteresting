class EateriesController < ApplicationController
  before_action :set_eatery, only: [:show, :edit, :update, :destroy]

  # GET /eateries
  # GET /eateries.json
  def index
    @eateries = Eatery.all
  end

  # GET /eateries/1
  # GET /eateries/1.json
  def show
    @reservation = Reservation.new
  end

  # GET /eateries/new
  def new
    @eatery = Eatery.new
  end

  # GET /eateries/1/edit
  def edit
  end

  # POST /eateries
  # POST /eateries.json
  def create

    @eatery = Eatery.new(eatery_params)
    @eatery.user_id = current_user.id
    #@eatery = current_user.eateries.build(eatery_params)

    respond_to do |format|
      if @eatery.save
        format.html { redirect_to @eatery, notice: 'Eatery was successfully created.' }
        format.json { render :show, status: :created, location: @eatery }
      else
        format.html { render :new }
        format.json { render json: @eatery.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    # one could add some validation here to check that the current user
    #matches the user associated witht the eatery
    respond_to do |format|
      if @eatery.update(eatery_params)
        format.html { redirect_to @eatery, notice: 'Eatery was successfully updated.' }
        format.json { render :show, status: :ok, location: @eatery }
      else
        format.html { render :edit }
        format.json { render json: @eatery.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    # one could add some validation here to check that the current user
    # matches the user associated witht the eatery
    @eatery.destroy
    respond_to do |format|
      format.html { redirect_to eateries_url, notice: 'Eatery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_eatery
      @eatery = Eatery.find(params[:id])
    end

  #  def current_user
  #    @eatery = current_user.eateries.find_by(:id params[:id])
  #    redirect_to eateries_path, notice: "Not authotized to edit this owner" if @eatery.nil?
  #  end

    def eatery_params
      params.fetch(:eatery, {})
      params.require(:eatery).permit(:name, :description, :address_zip, :address_state, :address_city, :address_street)

    end
end
