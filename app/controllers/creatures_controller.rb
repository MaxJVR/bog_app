class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def show
    @creatures = Creature.find(params[:id])
  end

  def new
    @creatures = Creature.new
  end

  def edit
     @creatures = Creature.find(params[:id])
  end

  def create
  @creatures = Creature.new(creatures_params)

  @creatures.save
  redirect_to @creatures

    if @creatures.save
      redirect_to @creatures
    else
      render 'new'
    end
  end

  def update
    @creatures = Creature.find(params[:id])

    if @creatures.update(creatures_params)
      redirect_to @creatures
    else
      render 'edit'
    end
 end
 def destroy
  @creatures = Creature.find(params[:id])
  @creatures.destroy

  redirect_to creatures_path
 end
  private
  def creatures_params
    params.require(:creatures).permit(:name, :description)
  end

end
