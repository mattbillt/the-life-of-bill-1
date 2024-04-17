class MatchesController < ApplicationController
  def index
   @matches = Match.all
  end

  def new
    @match = Match.new
  end

  def create
    match = Match.new(match_params)
    match.save
    redirect_to match_path(match)
  end

  def show
    @match = Match.find(params[:id])
  end

  private

  def match_params
    params.require(:match).permit(:name, :date, :location, :review)
  end
end
