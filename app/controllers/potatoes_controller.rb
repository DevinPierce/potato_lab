class PotatoesController < ApplicationController

  before_action :fetch_potato, only: [:show, :edit, :update, :destroy]

  def index
    @potatoes = Potato.all
  end

  def show

  end

  def new
    @potato = Potato.new
  end

  def create
    if @potato.valid?
      @potato = Potato.create(potato_params(:name, :eyes))
      redirect_to potato_path(@potato)
    else
      render :new
    end 
  end

  def edit

  end

  def update
    @potato.update(potato_params(:name, :eyes))
    redirect_to potato_path(@potato)
  end

  def destroy
    @potato.destroy
    redirect_to potatoes_path
  end

  private

  def fetch_potato
    @potato = Potato.find(params[:id])
  end

  def potato_params(*args)
    params.require(:potato).permit(*args)
  end

end
