class PlanttagsController < ApplicationController

  def new
    @planttag= PlantTag.new
    @plant = Plant.find(params[:plant_id])
  end
end
