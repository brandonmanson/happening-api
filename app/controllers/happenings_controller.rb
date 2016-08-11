class HappeningsController < ApplicationController
  before_action :authenticate_user

  # GET /happenings
  def index
    @happenings = Happening.all
    render json: @happenings
  end

  # GET /happenings/1
  def show
    @users = Happening.find(params[:id]).users
    render json: @users
  end

  # POST /happenings
  def create
    @happening = Happening.new(happening_params)

    if @happening.save
      render json: @happening, status: :created, location: @happening
    else
      render json: @happening.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /happenings/1
  def update
    if @happening.update(happening_params)
      render json: @happening
    else
      render json: @happening.errors, status: :unprocessable_entity
    end
  end

  # DELETE /happenings/1
  def destroy
    @happening.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happening
      @happening = Happening.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def happening_params
      params.require(:happening).permit(:name, :start_date, :end_date, user_ids: [])
    end
end
