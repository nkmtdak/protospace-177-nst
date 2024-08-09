class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  private

  def prototype_params
    params.require(:prototype).permit(:name, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
