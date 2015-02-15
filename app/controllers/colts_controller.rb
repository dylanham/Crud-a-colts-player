class ColtsController < ApplicationController
  before_action :set_colt, only:[:show,:edit,:update,:destroy]
  def index
    @colts = Colt.all
  end

  def show
  end

  def new
    @colt = Colt.new
  end

  def create
    @colt = Colt.new(colt_params)
    if @colt.save
      flash[:notice] = "A new Colt has been added!"
      redirect_to @colt
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @colt.update(colt_params)
      flash[:notice] = "You updated a Colt!"
      redirect_to @colt
    else
      render :edit
    end
  end

  def destroy
    @colt.destroy
    redirect_to colts_path
  end

  private

  def colt_params
    params.require(:colt).permit(:name, :number, :position)
  end

  def set_colt
    @colt = Colt.find(params[:id])
  end

end
