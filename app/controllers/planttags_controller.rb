class PlanttagsController < ApplicationController

  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag= PlantTag.new
    @plant_tag.plant =@plant
  end
end
