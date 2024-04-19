class MatchesController < ApplicationController

  before_action :set_match, only: [:show, :edit, :update, :destroy]

  def index
   @matches = Match.all
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    @match.save
    redirect_to match_path(@match)
  end

  def show
    set_match
  end

  def edit
    set_match
  end

  def update
    set_match
    @match.update(match_params)
    redirect_to match_path(@match)
  end

  def destroy
    set_match
    @match.destroy
    redirect_to matches_path, status: :see_other
  end

  private

  def match_params
    params.require(:match).permit(:name, :date, :location, :review)
  end

  def set_match
    @match = Match.find(params[:id])
  end
end
