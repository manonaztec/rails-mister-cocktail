class CocktailsController < ApplicationController
  def index
    @cocktail = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
     @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to root_path(@cocktail)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy
    redirect_to cocktails_index_path(@restaurant)
  end

  private

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end


  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
