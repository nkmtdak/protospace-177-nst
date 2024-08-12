class PrototypesController < ApplicationController
  
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototypes = Prototype.new
  end

  def create
    Prototype.create(prototype_params)
   if prototype.save
    redirect_to "/"
   else
    render :new, status: :unprocessable_entity
   end
  end

   def show
    @prototypes = Prototype.find(params[:id])
   end
  
  private

   def prototype_params
   params.require(:prototype).permit(:name, :catch_copy, :concept, :image).merge(user_id: current_user.id)
   end


end
