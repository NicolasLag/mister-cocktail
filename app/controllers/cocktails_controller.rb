class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create ]

  def index
    @cocktails = Cocktail.all
  end

  def show
    find_cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = @cocktail.doses.build(dose_params)
    @cocktail.save
  end

  private

  def dose_params
    params.require(:dose).permit(:content)
  end
  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
