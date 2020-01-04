class SearchesController < ApplicationController

  def index
      @query = params[:q] 
      @videogames = Videogame.where("body ILIKE ?", "%#{@query}%")
  end

end
