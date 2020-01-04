class VideogamesController < ApplicationController
  
  def index
   @videogames = Videogame.all
  end
  
  def new
   @videogame = Videogame.new    
  end
  
  def create
    @videogame = Videogame.new(videogame_params)
    if @videogame.save
      redirect_to(videogames_path)
    else
      render(:new)
    end
  end
  
  def edit
    @videogame = Videogame.find(params[:id]) 
  end

  def update 
    @videogame = Videogame.find(params[:id])
    if @videogame.update(videogame_params)
      redirect_to(videogames_path)
    else 
      render(:edit)
    end
  end
  
  def destroy
    @videogame = Videogame.find(params[:id])
    @videogame.destroy
    redirect_to(videogames_path)
  end
  
  private

  def videogame_params
  params.require(:videogame).permit(:body)
  end

end
