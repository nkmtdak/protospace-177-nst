class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def show
    @prototype = Prototype.new
    @prototypes = @prototype.includes(:user)
  end

  def create
    @prototype = prototypes.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      @prototypes = @prototypes.includes(:user)
      render :index, status: :unprocessable_entity
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:name, :catch_copy,:concept,:image).merge(user_id: current_user.id)
  end
end