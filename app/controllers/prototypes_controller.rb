class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
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
      @prototypes = @prototypes.includes(:user)
      render :index, status: :unprocessable_entity
  end

  private

  def prototype_params
    params.require(:prototype).permit(:name, :catch_copy, :concept, :image).merge(user_id: current_user.id)
    params.require(:prototype).permit(:title, :description, :image)
    @prototypes = Prototype.all
  end

  def create
    @prototype = prototypes.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    end
  end

end