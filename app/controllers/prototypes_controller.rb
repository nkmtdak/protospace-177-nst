class PrototypesController < ApplicationController
  def index
<<<<<<< Updated upstream
    @prototypes = Prototype.all
=======
    # プロトタイプ一覧の表示
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path, notice: 'プロトタイプが投稿されました'
    else
      render :new
    end
>>>>>>> Stashed changes
  end

  private

  def prototype_params
<<<<<<< Updated upstream
    params.require(:prototype).permit(:name, :catch_copy, :concept, :image).merge(user_id: current_user.id)
=======
    params.require(:prototype).permit(:title, :description, :image)
>>>>>>> Stashed changes
  end
end
