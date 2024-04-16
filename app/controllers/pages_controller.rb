class PagesController < ApplicationController

  def about
  end

  def contact

    @relatives = ["muv", "alb", "looch", "darren", "nan"]

    search = params[:relative]

    if search
      @relatives = @relatives.select do |relative|
        relative.start_with? search.downcase
      end
    end

  end

  def home
  end


end
