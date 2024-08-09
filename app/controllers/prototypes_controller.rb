class PrototypesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end
    
  def edit
  end

  def update
    prototype = Pweet.find(params[:id])
    prototype.update(prototype_params)
    redirect_to root_path
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
    redirect_to root_path
  end

  def show
  end
  
  def create
    Prototype.create(prototype_params)
    redirect_to '/'
  end

  private
  def prototype_params
    params.require(:prototype).permit(:name, :profile, :occupation,:position).merge(user_id: current_user.id)
  
  end


  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end